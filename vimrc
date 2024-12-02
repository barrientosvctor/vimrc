set number
set relativenumber
set wrap
set clipboard=unnamed
if has("win32") | set undodir=~/vimfiles/undo | elseif has("unix") | set undodir=~/.vim/undo | endif
set noswapfile
set nobackup
set wildmenu
if has("patch-8.2.4325") && exists("+wildoptions") | set wildoptions=pum | endif
if exists("+termguicolors") | set termguicolors | endif
set hlsearch
set showmatch
set incsearch
set ignorecase
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
set completeopt=menuone,noinsert,noselect,preview
set wildignore+=*/tmp/*,*/temp/*,*/node_modules/*,*/.venv/*,*/__pycache__/*,.DS_Store,.env,*/coverage/*,*/build/*,*/.vscode/*,*/.git/*,*/dist/*,*.o,*.obj,*.pyc,*.log
syntax on
filetype indent plugin on
let mapleader=","
let maplocalleader=","
colorscheme habamax

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

if !has("nvim")
    if has("patch-9.0.1799")
        packadd editorconfig
    endif
    if has("patch-9.1.0375")
        packadd comment
    endif
endif
