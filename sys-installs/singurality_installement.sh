#!/usr/bin/env bash

set -euo pipefail

SINGULARITY_VERSION="4.4.0"
GO_VERSION="1.26.0"
ARCH="amd64"
OS="linux"
LOG_FILE="/tmp/install-singularity.log"

cleanup() {
    true
}

error_exit() {
    echo "Installation failed."
    echo "Check the log file for details: ${LOG_FILE}"
    exit 1
}

trap cleanup EXIT
trap error_exit ERR

# Must be run as root
if [[ "${EUID}" -ne 0 ]]; then
    echo "This script must be run as root. Please use sudo or run it as root."
    exit 1
fi

# Must use apt
if ! command -v apt-get >/dev/null 2>&1; then
    echo "This script is written for systems that use the apt package manager."
    exit 1
fi

# Stop if the command name already exists
if command -v singularity >/dev/null 2>&1; then
    echo "Name conflict detected: 'singularity' already exists on this system."
    echo "Installation stopped so existing system behavior is not changed."
    exit 1
fi

echo "This script will silently install SingularityCE ${SINGULARITY_VERSION} on Ubuntu."
echo "It will:"
echo "  - install required build dependencies with apt"
echo "  - install Go ${GO_VERSION}"
echo "  - download SingularityCE source"
echo "  - compile and install SingularityCE"
echo

read -r -p "Do you want to continue? (y/n): " confirm

case "${confirm}" in
    y|Y) ;;
    n|N)
        echo "Installation cancelled."
        exit 0
        ;;
    *)
        echo "Invalid input. Please enter y or n."
        exit 1
        ;;
esac

: > "${LOG_FILE}"
export DEBIAN_FRONTEND=noninteractive

apt-get update -y >> "${LOG_FILE}" 2>&1
apt-get install -y \
    build-essential \
    autoconf \
    automake \
    cryptsetup \
    fuse2fs \
    git \
    fuse \
    libfuse-dev \
    libseccomp-dev \
    libtool \
    pkg-config \
    runc \
    squashfs-tools \
    squashfs-tools-ng \
    uidmap \
    wget \
    zlib1g-dev >> "${LOG_FILE}" 2>&1

if grep -qE '24\.04|24\.10|25\.04|25\.10|26\.04' /etc/os-release 2>/dev/null; then
    apt-get install -y libsubid-dev >> "${LOG_FILE}" 2>&1
fi

rm -rf /usr/local/go >> "${LOG_FILE}" 2>&1 || true

cd /tmp
wget -q "https://dl.google.com/go/go${GO_VERSION}.${OS}-${ARCH}.tar.gz" >> "${LOG_FILE}" 2>&1
tar -C /usr/local -xzf "go${GO_VERSION}.${OS}-${ARCH}.tar.gz" >> "${LOG_FILE}" 2>&1
rm -f "go${GO_VERSION}.${OS}-${ARCH}.tar.gz" >> "${LOG_FILE}" 2>&1

export PATH="/usr/local/go/bin:${PATH}"

wget -q "https://github.com/sylabs/singularity/releases/download/v${SINGULARITY_VERSION}/singularity-ce-${SINGULARITY_VERSION}.tar.gz" >> "${LOG_FILE}" 2>&1
tar -xzf "singularity-ce-${SINGULARITY_VERSION}.tar.gz" >> "${LOG_FILE}" 2>&1
cd "singularity-ce-${SINGULARITY_VERSION}"

./mconfig >> "${LOG_FILE}" 2>&1
make -C builddir >> "${LOG_FILE}" 2>&1
make -C builddir install >> "${LOG_FILE}" 2>&1

echo "Install complete."
echo "Try this command to test it:"
echo "singularity --version"
