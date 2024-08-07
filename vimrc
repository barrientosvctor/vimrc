" Victor's vimrc

set bg=dark
set number
set relativenumber
set history=1000                    " sets the number of lines that will be remembered in the history table
set ruler
set undofile                        " persist undo history between file editing sessions
set colorcolumn=80					" sets a column to indicate length max
set wrap

" Search
set hlsearch			            " highlight word matches
set showmatch			            " shows word matches when you're searching in code
set incsearch                       " incremental search highlighting

" Syntax / indent / files config
syntax on
set encoding=utf-8
scriptencoding utf-8
filetype indent plugin on           " enable filetype
set autoindent
set smartindent
set nowrap
set backspace=indent,eol,start
set hidden
set expandtab
set shiftwidth=4
set softtabstop=4 " Use value of shiftwidth
set smarttab       " Always use shiftwidth

" Remove backups
set noswapfile                      " it does not create swap files
set nobackup                        " it does not create backup files, use git instead!

" Other
set laststatus=2				    " sets laststatus for statusbar
set wildmenu                        " sets a horizontal menu when you're autocompleting : commands
set redrawtime=2000                 " time to draw syntax highlighting to every filetype
let mapleader = ","                 " sets , key as <leader> key

highlight ExtraWhitespace ctermbg=1
match ExtraWhitespace /\s\+$/

if has("patch-8.2.4325") && exists("+wildoptions") | set wildoptions=pum | endif
if has("unix") | set undodir=~/.vim/undodir | elseif has("win32") | set undodir=~/vimfiles/undodir | endif
if exists("+termguicolors") | set termguicolors | endif
if exists("+clipboard") && exists("+clientserver") | set clipboard=unnamedplus | endif

packadd gruvbox
let g:gruvbox_contrast_dark = "hard"
colorscheme gruvbox
