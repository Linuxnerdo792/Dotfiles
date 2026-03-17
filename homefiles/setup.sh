#!/bin/bash

echo "Setting up bash aliases..."

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Backup existing file
if [ -f "$HOME/.bash_aliases" ]; then
    echo "Backing up existing .bash_aliases to .bash_aliases.backup"
    mv "$HOME/.bash_aliases" "$HOME/.bash_aliases.backup"
fi

# Create symbolic link
ln -s "$DOTFILES_DIR/.bash_aliases" "$HOME/.bash_aliases"

# Ensure .bashrc loads it
if ! grep -q ".bash_aliases" "$HOME/.bashrc"; then
    echo "" >> "$HOME/.bashrc"
    echo "if [ -f ~/.bash_aliases ]; then" >> "$HOME/.bashrc"
    echo "    . ~/.bash_aliases" >> "$HOME/.bashrc"
    echo "fi" >> "$HOME/.bashrc"
fi

echo "Setup complete!"
echo "Run: source ~/.bashrc OR restart your terminal"
