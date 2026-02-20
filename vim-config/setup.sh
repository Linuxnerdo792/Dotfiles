#!/bin/bash

echo "Copying .vimrc to home directory..."
cp .vimrc ~/.vimrc

if [ ! -d "$HOME/.vim/bundle/Vundle.vim" ]; then
    echo "Installing Vundle..."
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
else
    echo "Vundle already installed."
fi

echo "Installing Vim plugins..."
vim +PluginInstall +qall

echo "Vim setup complete."
