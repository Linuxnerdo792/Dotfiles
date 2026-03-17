# Homefiles – Bash Customizations
# Research Sharma Bhattarai


- This folder contains my customized Bash environment setup to improve command-line efficiency, workflow, and system management. It includes a collection of aliases, functions, and a setup script that can be installed and maintained through symbolic linking in a dotfiles repository.

---

## Files

- **`.bash_aliases`**  
  - It Contains custom aliases and functions, including:

  ### Navigation Shortcuts
  - `..`, `...`, `.1`–`.5`, `....`–`......` – It is the quick traversal of directories  
  - `cd..`, `cd...` – This is the alternate navigation shortcuts  

  ### Safer File Operations
  - `rm -i`, `cp -i`, `mv -i` – These are the interactive commands to prevent accidental deletion or overwriting  

  ### Git Workflow Aliases
  - `gs`, `gst`, `ga`, `gaa`, `gc`, `gca`, `gp`, `gpl`, `gpo`, `gd` – This will be very helpful speed up common Git operations and save my time to do some assignment or projects.  
  - `gitlg` – It kind of works as a visual commit graph for easy history tracking  
  - I used other aliash as well ad in future i will add.
  ### Docker Aliases
  - `dps`, `di`, `dl`, `dkd`, `dki`, `dex`, `dstop`, `drm`, `dclean`, `dlog` – simplify Docker container and image management  

  ### Utility Functions
  - `extract` – extracts multiple archive types (`.zip`, `.tar.gz`, `.tar.bz2`, `.rar`, `.7z`, `.gz`, `.tar`, `.bz2`) with one command  

---

- **`setup.sh`**  
  - This Automates installation of the Bash customizations:
  - This also backs up any existing `.bash_aliases` file  
  - Then it creates a symbolic link from the dotfiles repository to the user’s home directory  
  - It ensures `.bashrc` sources `.bash_aliases`  
  - It prompts the user to reload the Bash environment


### CITATIONS
- [Awesome Bash Aliases](https://github.com/ctrlaltvikas/awesome-bash-alias) – I used many aliases from here and modified my `.bash_aliases` file.

- [Cyberciti Bash Aliases Guide](https://www.cyberciti.biz/tips/bash-aliases-mac-centos-linux-unix.html)– I also used some of the alias and understood how it work and learned new command from here.

## 🤖 AI Usage

- I used ChatGPT to help create the setup script for linking and backing up my Bash files and the prompt was "Create a Bash setup script that backs up existing dotfiles, creates symbolic links to my repository, and ensures .bashrc sources .bash_aliases."

