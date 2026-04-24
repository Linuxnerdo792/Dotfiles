

# Dotfiles

## Overview

- This repository contains my personal dotfiles and setup scripts used to configure my Linux environment. The main goal is to make my setup consistent, reusable, and easier to manage across different systems.


## Repository Structure

```
research@Research:~/Dotfiles$ tree -L 2
.
├── homefiles
│   ├── README.md
│   └── setup.sh
├── sys-installs
│   ├── README.md
│   └── singurality_installement.sh
└── vim-config
    ├── README.md
    ├── check.py
    └── install.sh

4 directories, 7 files
```

---

## Folder Breakdown

### vim-config 

- This folder contains my Vim setup.

* `install.sh` -  This files installs and configures Vim
* `check.py` -  This verifies my installation
* `README.md` - This is my documenting and my  explaination of  setup and usage

- This was my starting point where I learned how to automate editor configuration.

# Link to my vim-config folder:
[Vim-config](https://github.com/Linuxnerdo792/Dotfiles/tree/main/vim-config)
---

### Homefiles 

This folder contains my Bash customizations.

* `.bash_aliases` - It is just the custom aliases and functions
* `setup.sh` - This automates setup using symbolic links
* `README.md` - And this is the documentation that explains all configurations

#### Features:

* Navigation shortcuts
* Safer file commands 
* Git and Docker aliases
* `extract` function for multiple archive formats

# Link to my Homefiles folder:
---

### Sys-installs 

- This folder focuses on system-level setup.

* `singularity_installement.sh` : It installs required system tools
* `README.md` : It explains installation steps

- This part helped me understand system automation and package installation.

---

## How to Use

### 1. Clone the repository

```
git clone https://github.com/Linuxnerdo792/Dotfiles.git
cd Dotfiles
```

---

### 2. Run Bash Setup 

```
bash homefiles/setup.sh
```

---

## What the Setup Script Does

* It checks for required packages and **asks before installing missing ones**
* Then it backs up any existing `.bash_aliases` file
* After that it Creates a symbolic link to the home directory
* Then it Ensures `.bashrc` loads `.bash_aliases`
* Lastly it prompts the user to reload the environment


---

## Improvements Based on Feedback

- After reviewing feedback from Tasks 1,2 and 3:

* I Added an interactive prompt (`read`)  to the script
* I fixed README formatting so links are clickable
* Then i improved structure and readability of configuration files

---

## GitHub Issue



-  I Created a GitHub Issue
- Then i Fixed:

  * Missing interactive prompt
  * Documentation clarity
* After that i closed the issue after verifying everything works

---

## AI Usage 

- In Task 2, I was flagged regarding AI usage.

To fix this:

* I clearly documented where AI was used
* I rewrote explanations in my own words
* I also made sure I fully understand the code and configurations



## Future Improvements

* I am looking forward to combine all setups into one master script
* Then also i will improve error handling
* After that i will organize files more modularly
* Then i would also add support for different environments 
  
