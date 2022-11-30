set number
set relativenumber
set termguicolors
set history=1000

" Search
set hlsearch
set showmatch

" Other
set laststatus=1
set wildmenu
set wildoptions=pum

" Autocompletion
set completeopt=menuone,noinsert,noselect,preview

" Syntax / indent / files config
syntax on
set encoding=utf-8
scriptencoding utf-8
filetype indent plugin on
set autoindent
set smartindent
set nowrap
set backspace=indent,eol,start
set hidden

" Remove backups
set noswapfile
set nobackup

" Imports
so ~/vimfiles/keymaps.vim
so ~/vimfiles/config.vim

let mapleader = ","
