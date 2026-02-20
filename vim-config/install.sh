#!/bin/bash

# Copy .vimrc to home directory
cp ./vim-config/.vimrc ~/.vimrc

# Install Vundle if not present
if [ ! -d "$HOME/.vim/bundle/Vundle.vim" ]; then
    echo "Installing Vundle..."
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

# Install plugins
vim +PluginInstall +qall

echo "Vim setup complete."
