
# Homefiles

## Bash Customizations

### Research Sharma Bhattarai

- This folder contains my customized Bash setup that I use to make working in the terminal faster and more efficient. The main idea here is to simplify repetitive tasks, improve navigation, and make system management easier. I organized everything so it can be reused easily through my dotfiles setup using symbolic links.



## Files

### `.bash_aliases`

This file contains all my custom aliases and functions.

#### Navigation Shortcuts

* `..`, `...`, `.1`–`.5`, `....`–`......` : It is  used for quickly moving across directories
* `cd..`, `cd...` |: It is used for alternative shortcuts for navigation

- These help me move around the system faster without typing long paths.

---

#### Safer File Operations

* `rm -i`, `cp -i`, `mv -i`

- I made these interactive so I don’t accidentally delete or overwrite important files. It adds a confirmation step which is really useful.

---

#### Git Workflow Aliases

* `gs`, `gst`, `ga`, `gaa`, `gc`, `gca`, `gp`, `gpl`, `gpo`, `gd`

- These shorten common Git commands and save time when working on assignments or projects.

* `gitlg` : This shows me a cleaner commit history
 
- I also added some extra aliases and I plan to keep improving this section as I use Git more.

---

#### Docker Aliases

* `dps`, `di`, `dl`, `dkd`, `dki`, `dex`, `dstop`, `drm`, `dclean`, `dlog`

- These make it easier to manage Docker containers and images without typing full commands every time.

---

#### Utility Function

* `extract`

- This function allows me to extract different types of compressed files (`.zip`, `.tar.gz`, `.rar`, etc.) using a single command, instead of remembering different commands for each format.

---

### `setup.sh`

- This script automates the setup of my Bash environment.

What it does:
- It checks for required packages and prompts the user before installing any missing ones
- Then backs up any existing .bash_aliases file to avoid overwriting it
- After that it creates a symbolic link from this repo to the home directory
- Then it also make sure .bashrc loads .bash_aliases if it’s not already set
- Then prompts the user to reload the Bash environment after setup
---

## Citations

* [Awesome Bash Aliases](https://github.com/ctrlaltvikas/awesome-bash-alias)
  I used this as a base reference and modified many aliases to fit my workflow.

* [Cyberciti Bash Aliases Guide](https://www.cyberciti.biz/tips/bash-aliases-mac-centos-linux-unix.html)
  This helped me understand how aliases actually work and gave ideas for additional commands.

---

## AI Usage

I used ChatGPT to help with the initial version of the setup script. The prompt I used was:

 "Create a Bash setup script that backs up existing dotfiles, creates symbolic links to my repository, and ensures .bashrc sources .bash_aliases."

- After that, I reviewed and adjusted the script myself to match my setup and understanding and i also make sure i understood what was going on.

---

