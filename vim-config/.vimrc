set nocompatible              " be iMproved, required
filetype off                  " required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" --- Plugins ---
Plugin 'nanotech/vim-jellybeans' " Colorscheme
Plugin 'tpope/vim-fugitive'      " Git wrapper

call vundle#end()            " required
filetype plugin indent on    " required

" --- General Settings ---
syntax on
set number
colorscheme jellybeans

" At the very bottom of your .vimrc
try
  colorscheme jellybeans
catch
  " If jellybeans isn't installed yet, ignore the error
endtry
