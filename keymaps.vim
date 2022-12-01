" Hotkeys
nnoremap <C-w> :w<Enter>
nnoremap <C-q> :q<Enter>

" Fern
nnoremap <F1> :Fern . -drawer -toggle -reveal=%<Enter>

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
