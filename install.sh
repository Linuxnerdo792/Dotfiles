#!/bin/bash

# 1. Copy .vimrc to home directory
echo "Deploying .vimrc..."
cp ./vim-config/.vimrc ~/.vimrc

# 2. Check for Vundle and install if missing
IF_VUNDLE_EXISTS="$HOME/.vim/bundle/Vundle.vim"
if [ ! -d "$IF_VUNDLE_EXISTS" ]; then
    echo "Vundle not found. Installing..."
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
else
    echo "Vundle already installed."
fi

# 3. Install Vim plugins via Vundle
echo "Installing Vim plugins..."
vim +PluginInstall +qall

echo "Setup complete!"
