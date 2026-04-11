# sys-installs
# Research Sharma Bhattarai

- This folder contains the installation files I created for **Task 3** in my `dotfiles` repository. For this task, I chose **SingularityCE** on Ubuntu Linux. I chose it because it is not a simple one-command package install and mr. kijowaski suggested me to do so. This document shows steps for installing it on Ubuntu, also installing dependencies and  Go with that this will alsop show downloading the SingularityCE source code then shows how to configure the build, compiling it, and then installing it.

## Files in this folder

### `singurality_installement.sh`
- This script installs **SingularityCE** on Ubuntu Linux.

The script does the following:
- checks the effective user ID and exits unless it is run as `root`
- checks that the `apt` package manager exists
- tells the user what will be installed and asks for confirmation
- checks whether the `singularity` command name already exists to avoid a name conflict
- installs the required dependencies silently
- installs Go silently
- downloads the SingularityCE source code
- builds and installs SingularityCE
- prints a test command after the installation is complete

## How to run

```
cd sys-installs
chmod +x singurality_installement.sh
sudo ./singurality_installement.sh
```

# How the script works

I based this script mainly on the official SingularityCE Admin Guide. The guide explains that Ubuntu installation requires development dependencies first, followed by Go, then the SingularityCE source archive, followed by ./mconfig, make -C builddir, and make -C builddir install. The official Go installation page also shows the standard Linux approach of removing any previous /usr/local/go directory and extracting the downloaded tar archive into /usr/local.
I also added a command-name conflict check before installation. The assignment specifically says the script should stop if the software name already exists, even if that command is not the actual software being installed. Because of that, the script exits before installing anything if singularity is already found on the system.
The installation runs silently by redirecting command output to a log file. That way, the user is not flooded with build output during the install. If the install fails, the script points the user to the log file so the problem can be checked.

# Test command

- After installation, the script suggests testing with:

`singularity --version`

<img width="1204" height="379" alt="image" src="https://github.com/user-attachments/assets/1c6f70b9-5c64-4a49-8d1a-694db4afffe3" />

- Output:
 `singularity-ce version 4.4.0`


  
# Why I chose SingularityCE

- I chose SingularityCE because it is a real multi-step Linux software install and it matches the purpose of the assignment well. The SingularityCE user documentation describes it as a container platform for building and running containers, while the admin guide provides a full source installation workflow for Linux systems like Ubuntu.

# References
- SingularityCE Installation Guide

- Main source used for the Ubuntu dependency list, Go requirement, source installation flow, build commands, and verification ideas.
[SingularityCE User Guide](https://docs.sylabs.io/guides/latest/user-guide/)

- Used for general background on SingularityCE and understanding how the installed tool is used after setup.
[Go: Download and install](https://go.dev/doc/install)

- Used for the standard Linux Go installation method, especially extracting the archive into /usr/local/go.
[Go Downloads](https://go.dev/doc/install)

- Used to confirm the Linux amd64 Go tarball naming format and available release files.
Generative AI Use

- I used ChatGPT to help organize the Bash script and improve the wording of this README. The actual installation steps, commands, and overall install flow were based on the official SingularityCE and Go documentation listed above.

# Prompt used:

- Check my README file and verify my script as there is no silent installenment going on.
