" Victor's vimrc

set number
set relativenumber
set termguicolors                   " allows set background colors in vim
set history=1000                    " sets the number of lines that will be remembered in the history table
set clipboard+=unnamed,unnamedplus
set ruler
set undofile                        " persist undo history between file editing sessions
set colorcolumn=80					" sets a column to indicate length max

" Search
set hlsearch			            " highlight word matches
set showmatch			            " shows word matches when you're searching in code
set incsearch                       " incremental search highlighting
set ignorecase                      " case insensitive

" Autocompletion
set completeopt=menuone,noinsert,noselect,preview   " it's nedeed to show language servers's autocompletion

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

" Remove backups
set noswapfile                      " it does not create swap files
set nobackup                        " it does not create backup files, use git instead!

" Other
set laststatus=2				    " sets laststatus for statusbar
set wildmenu                        " sets a horizontal menu when you're autocompleting : commands
set wildoptions=pum			        " converts the horizontal menu to vertical menu
set noshowmode					    " it does not show actual mode in vim
set guicursor=n-i-v-c:block		    " sets cursor block
set redrawtime=2000                 " time to draw syntax highlighting to every filetype
let mapleader = ","                 " sets , key as <leader> key

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

colorscheme default

" highlight group color overrides
highlight VertSplit ctermfg=8 guifg=Grey
"highlight SignColumn ctermbg=8 guibg=#808080
"highlight VertSplit ctermfg=8 guifg=#808080

" LSP menu / popups
highlight Pmenu ctermbg=0 ctermfg=245 guibg=NONE guifg=#8a8a8a
highlight Pmenusel ctermbg=236 ctermfg=15 guibg=#303030 guifg=#ffffff
highlight PmenuSbar ctermbg=234 guibg=#1c1c1c
highlight PmenuThumb ctermbg=241 guibg=#626262

" git gutter
highlight DiffAdd ctermfg=10 ctermbg=0 guifg=#00ff00 guibg=Grey
highlight DiffDelete ctermfg=9 ctermbg=0 guifg=#ff0000 guibg=Grey
highlight DiffChange ctermfg=11 ctermbg=0 guifg=#ffff00 guibg=Grey

highlight! link GitGutterAdd DiffAdd
highlight! link GitGutterChange DiffChange
highlight! link GitGutterDelete DiffDelete
