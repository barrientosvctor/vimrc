set number
set relativenumber
set wrap
set clipboard=unnamed
set undofile
if has("win32") | set undodir=~/vimfiles/undo | elseif has("unix") | set undodir=~/.vim/undo | endif
set noswapfile
set nobackup
set nowritebackup
set signcolumn=yes
set wildmenu
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
set smartindent
set backspace=indent,eol,start
set hidden
set expandtab
set shiftwidth=4
set softtabstop=4
set smarttab
set laststatus=2
syntax on
filetype indent plugin on
let mapleader=","
let maplocalleader=","

nnoremap <Esc> <Cmd>nohlsearch<CR>
nnoremap <Leader>tx <Cmd>split<CR><C-w>j
nnoremap <Leader>ty <Cmd>vsp<CR><C-w>l
nnoremap <Leader>th <Cmd>term<CR>
nnoremap <Leader>tv <Cmd>vertical terminal<CR>
nnoremap <Leader>te <Cmd>tabedit<CR>
nnoremap <Leader>tp <Cmd>tabprevious<CR>
nnoremap <Leader>tn <Cmd>tabnext<CR>
tnoremap <Esc><Esc> <C-\><C-n>
nnoremap <Leader>bd <Cmd>bd<CR>
nnoremap <Leader>bp <Cmd>bprev<CR>
nnoremap <Leader>bn <Cmd>bnext<CR>
nnoremap <Leader>tb <Cmd>call util#ToggleBackground()<CR>
nnoremap <Leader>fe <Cmd>Ex<CR>

if !has("nvim")
    if has("patch-9.0.1799")
        packadd editorconfig
    endif
    if has("patch-9.1.0375")
        packadd comment
    endif
endif
