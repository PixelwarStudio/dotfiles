" Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'lervag/vimtex'

call vundle#end()
filetype plugin indent on

let mapleader = ','

" Basic
syntax on
set laststatus=2
colorscheme nord
set number
set guifont=Iosevka:h10
set hidden
set history=100
filetype indent on
set nowrap
set tabstop=4
set shiftwidth=2
set expandtab
set smartindent
set autoindent
set showmatch
set hlsearch

let g:lightline = { 
      \ 'colorscheme': 'nord', 
      \ }

