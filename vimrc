" Victor's vimrc

set number              " sets line number
set relativenumber      " set line relative numbers
set termguicolors       " allows set background colors in vim
set history=1000        " sets the number of lines that will be remembered in the history table
set background=dark     " sets dark background for vim
set ruler
set mouse=a
set undofile            " persist undo history between file editing sessions
set clipboard=unnamed,unnamedplus   " access to system clipboard

" Search
set hlsearch			" highlight word matches
set showmatch			" shows word matches when you're searching in code
set incsearch           " incremental search highlighting
set ignorecase          " case insensitive

" Autocompletion
set completeopt=menuone,noinsert,noselect,preview   " it's nedeed to show language servers's autocompletion

" Syntax / indent / files config
syntax on                       " sets syntax highlighting
set encoding=utf-8
scriptencoding utf-8
filetype indent plugin on       " enable filetype
set autoindent
set smartindent
set nowrap                      " sets no word wrap when a line number reaches the window size
set backspace=indent,eol,start
set hidden

" Remove backups
set noswapfile      " it does not create swap files
set nobackup        " it does not create backup files, use git instead!

" Colorschemes
colorscheme twilight
" colorscheme solarized8

" Other
set laststatus=1				" sets laststatus for statusbar
set wildmenu                    " sets a horizontal menu when you're autocompleting : commands
set wildoptions=pum			    " converts the horizontal menu to vertical menu
set noshowmode					" it does not show actual mode in vim
set guicursor=n-i-v-c:block		" sets cursor block
set redrawtime=2000             " time to draw syntax highlighting to every filetype
let mapleader = ","             " sets , key as <leader> key

" Imports
if has("unix")
	so ~/.vim/keymaps.vim
	so ~/.vim/config.vim
    set undodir=~/.vim/undodir
elseif has("win32")
	so ~/vimfiles/keymaps.vim
	so ~/vimfiles/config.vim
    set undodir=~/vimfiles/undodir
endif
