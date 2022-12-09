" Hotkeys
nnoremap <C-w> :w<Enter>
nnoremap <C-q> :q<Enter>
nnoremap q<C-q> :qa<Enter>

" Fern
nnoremap <F1> :Fern . -drawer -toggle -width=30 -reveal=%<Enter>

" Utils
nnoremap te :tabedit<Enter>

" Windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Split windows
nnoremap ty :vsp<Enter><C-w>l
nnoremap tx :split<Enter><C-w>j

" Terminal
nnoremap tv :vert term<Enter>
nnoremap th :term<Enter>
tnoremap <Esc><Esc> <C-\><C-n>

" Asyncomplete
inoremap <expr> <C-s> pumvisible() ? "\<C-n>" : "\<C-s>"
inoremap <expr> <C-a> pumvisible() ? "\<C-p>" : "\<C-a>"
inoremap <expr> <CR> pumvisible() ? asyncomplete#close_popup() : "\<CR>"
imap <C-f> <Plug>(asyncomplete_force_refresh)

" Refresh syntax highlighting
nnoremap <F12> <Esc>:syntax sync fromstart<Enter>
