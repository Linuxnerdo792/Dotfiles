#!/bin/bash

# =========================================
# Bash Dotfiles Setup Script
# =========================================
# This script sets up  Bash environment by creating symbolic links
# for .bashrc or .bash_aliases, backing up existing files, and optionally
# installing required packages.

# -----------------------
# Configuration
# -----------------------
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BASH_FILE=".bash_aliases"   # change to .bashrc if you want to link .bashrc instead
REQUIRED_PACKAGES=(git unzip p7zip-full docker.io) # optional

# -----------------------
# 1. Check for sudo and install packages
# -----------------------
if [ "$(id -u)" -eq 0 ]; then
    echo "Running as root..."
else
    echo "Checking for required packages..."
    for pkg in "${REQUIRED_PACKAGES[@]}"; do
        if ! dpkg -l | grep -qw "$pkg"; then
            echo "Package missing: $pkg"
            MISSING_PACKAGES+=("$pkg")
        fi
    done

    if [ ${#MISSING_PACKAGES[@]} -gt 0 ]; then
        echo "Installing missing packages..."
        sudo apt update
        sudo apt install -y "${MISSING_PACKAGES[@]}"
    else
        echo "All required packages are already installed."
    fi
fi

# -----------------------
# 2. Backup existing file
# -----------------------
TARGET="$HOME/$BASH_FILE"
if [ -f "$TARGET" ] || [ -L "$TARGET" ]; then
    BACKUP="$TARGET.backup.$(date +%Y%m%d%H%M%S)"
    echo "Backing up existing $BASH_FILE to $BACKUP"
    mv "$TARGET" "$BACKUP"
fi

# -----------------------
# 3. Create symbolic link
# -----------------------
ln -s "$DOTFILES_DIR/$BASH_FILE" "$TARGET"
echo "Symbolic link created: $TARGET → $DOTFILES_DIR/$BASH_FILE"

# -----------------------
# 4. Ensure sourcing in .bashrc (if linking .bash_aliases)
# -----------------------
if [ "$BASH_FILE" == ".bash_aliases" ]; then
    if ! grep -q ".bash_aliases" "$HOME/.bashrc"; then
        echo "" >> "$HOME/.bashrc"
        echo "if [ -f ~/.bash_aliases ]; then" >> "$HOME/.bashrc"
        echo "    . ~/.bash_aliases" >> "$HOME/.bashrc"
        echo "fi" >> "$HOME/.bashrc"
        echo "Added source command to ~/.bashrc"
    fi
fi

# -----------------------
# 5. Finish
# -----------------------
echo "Setup complete!"
echo "Please reload your shell: run 'source ~/.bashrc' or restart your terminal."
