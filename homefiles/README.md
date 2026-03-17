# Bash Customization (homefiles)

This folder contains my bash customization setup using `.bash_aliases`.

## Files

- `.bash_aliases`  
  Contains custom aliases and functions for improving command line efficiency.

- `setup.sh`  
  Script to install the aliases by creating a symbolic link and updating `.bashrc`.

## Features

- Safer file operations (`rm -i`, `cp -i`)
- Navigation shortcuts (`..`, `...`)
- Git shortcuts (`gs`, `ga`, `gc`, `gp`)
- Archive extraction function (`extract`)

## Installation

Run:

```bash
./setup.sh
