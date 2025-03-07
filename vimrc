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
set cursorline
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

command! -nargs=0 ToggleBackground :call util#ToggleBackground()
command! -nargs=0 InspectSynStack :call util#SynStack()

call plug#begin()

Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf' | Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'

if has("nvim")
    Plug 'nvim-treesitter/nvim-treesitter', { 'commit': '00a513f' } " Neovim 0.10 required.
else
    if has("patch-9.0.1799")
        packadd editorconfig
    else
        Plug 'editorconfig/editorconfig-vim'
    endif

    if has("patch-9.1.0375")
        packadd comment
    endif
endif

call plug#end()

let g:gruvbox_contrast_dark = "hard"
colorscheme gruvbox
