let has_lua_and_abyss = has("lua") && !empty(glob("~/projects/nvim/abyss.nvim"))
let enable_abyss = 1

set bg=dark
set number
set relativenumber
set history=1000
set ruler
set undofile
set colorcolumn=80
set wrap

" Search
set hlsearch
set showmatch
set incsearch

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
set expandtab
set shiftwidth=4
set softtabstop=4  " Use value of shiftwidth
set smarttab       " Always use shiftwidth

" Remove backups
set noswapfile                      " it does not create swap files
set nobackup                        " it does not create backup files, use git instead!

" Other
set laststatus=2
set wildmenu
let mapleader = ","

highlight ExtraWhitespace ctermbg=1
match ExtraWhitespace /\s\+$/

if has("patch-8.2.4325") && exists("+wildoptions") | set wildoptions=pum | endif
if has("unix") | set undodir=~/.vim/undodir | elseif has("win32") | set undodir=~/vimfiles/undodir | endif
if exists("+termguicolors") | set termguicolors | endif
if exists("+clipboard") && exists("+clientserver") | set clipboard=unnamedplus | endif

call plug#begin()
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'

if has("patch-9.0.1799")
    packadd! editorconfig
else
    Plug 'editorconfig/editorconfig-vim'
endif

if has_lua_and_abyss
    Plug '~/projects/nvim/abyss.nvim'
endif
call plug#end()

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"
let g:asyncomplete_auto_popup = 0
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gs <plug>(lsp-document-symbol-search)
    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
    nnoremap <buffer> <expr><c-f> lsp#scroll(+4)
    nnoremap <buffer> <expr><c-d> lsp#scroll(-4)

    let g:lsp_format_sync_timeout = 1000
    autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')

    " refer to doc to add more commands
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

nnoremap <Esc> <Cmd>nohlsearch<CR>
nnoremap <Leader>tx <Cmd>split<CR>
nnoremap <Leader>ty <Cmd>vsp<CR><C-w>l
nnoremap <Leader>th <Cmd>term<CR>
nnoremap <Leader>tv <Cmd>vertical terminal<CR>
nnoremap <Leader>te <Cmd>tabedit<CR>
nnoremap <Leader>tp <Cmd>tabprevious<CR>
nnoremap <Leader>tn <Cmd>tabnext<CR>
tnoremap <Esc><Esc> <C-\><C-n>
nnoremap <Leader>bd <Cmd>bd<CR>
nnoremap <Leader>tb <Cmd>call util#ToggleBackground()<CR>
nnoremap <F2> <Cmd>call util#SynStack()<CR>
nnoremap <Leader>ff <Cmd>NERDTreeToggle<CR>

if has_lua_and_abyss && enable_abyss
    lua require("abyss").setup {}
else
    colorscheme retrobox
endif
