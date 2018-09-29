let mapleader = ","
execute pathogen#infect()

filetype on
syntax on
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

set laststatus=2
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
