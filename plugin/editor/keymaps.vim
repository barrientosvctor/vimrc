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

" Refresh syntax highlighting
nnoremap <F12> <Esc>:syntax sync fromstart<Enter>

" Show highlight group
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

nnoremap <leader>sp :call <SID>SynStack()<CR>

" Comment / uncomment code blocks
noremap <leader>gcc :norm i
noremap <leader>gcn :norm x

" Resize vim split
nnoremap t<left> <C-w>>
nnoremap t<right> <C-w><
nnoremap t<up> <C-w>+
nnoremap t<down> <C-w>-

" Tabs
nnoremap te :tabedit<Enter>
nnoremap <leader>as :tabnext<Enter>
nnoremap <leader>sa :tabprevious<Enter>

" Buffers with Vim airline
nnoremap <leader>df :bnext<Enter>
nnoremap <leader>fd :bprev<Enter>
nnoremap <leader>dc :bdelete<Enter>
