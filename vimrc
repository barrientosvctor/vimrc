set number
set relativenumber
set wrap
set undofile
if has("win32") | set undodir=~/vimfiles/undo | elseif has("unix") | set undodir=~/.vim/undo | endif
set noswapfile
set nobackup
set nowritebackup
if exists("+wildmenu") | set wildmenu | endif
if has("patch-8.2.4325") && exists("+wildoptions") | set wildoptions=pum | endif
if exists("+termguicolors") | set termguicolors | endif
set hlsearch
set showmatch
set incsearch
set ignorecase
set smartcase
set encoding=utf-8
scriptencoding utf-8
set autoindent
if exists("+smartindent") | set smartindent | endif
set backspace=2
set hidden
set completeopt=menuone,preview,noinsert
syntax enable
filetype indent plugin on
let mapleader=","
let maplocalleader=","

nnoremap <Esc> :nohlsearch<CR>
nnoremap <Leader>th :term<CR>
nnoremap <Leader>tv :vertical terminal<CR>
nnoremap <Leader>te :tabedit<CR>
nnoremap <Leader>tp :tabprevious<CR>
nnoremap <Leader>tn :tabnext<CR>
nnoremap <Leader>lb :ls<CR>:b<Space>
nnoremap <Leader>fe :Ex<CR>

command! -nargs=0 ToggleBackground :call util#ToggleBackground()
command! -nargs=0 InspectSynStack :call util#SynStack()

if !has("nvim")
    if has("patch-9.0.1799")
        packadd editorconfig
    endif
    if has("patch-9.1.0375")
        packadd comment
    endif
endif
