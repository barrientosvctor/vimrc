" Windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Split windows
nnoremap ty <cmd>vsp<Enter><C-w>l
nnoremap tx <cmd>split<Enter><C-w>j

" Terminal
nnoremap tv <cmd>vert term<Enter>
nnoremap th <cmd>term<Enter>
tnoremap <Esc><Esc> <C-\><C-n>

" Refresh syntax highlighting
nnoremap <F12> <Esc><cmd>syntax sync fromstart<Enter>

" Show highlight group
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v<cmd>val, "name")')
endfunc

nnoremap <leader>sp <cmd>call <SID>SynStack()<CR>

" Comment / uncomment code blocks
noremap <leader>gcc <cmd>norm i
noremap <leader>gcn <cmd>norm x

" Resize vim split
nnoremap t<left> <C-w>>
nnoremap t<right> <C-w><
nnoremap t<up> <C-w>+
nnoremap t<down> <C-w>-

" Tabs
nnoremap te <cmd>tabedit<Enter>
nnoremap <leader>as <cmd>tabnext<Enter>
nnoremap <leader>sa <cmd>tabprevious<Enter>

" Buffers
nnoremap <leader>df <cmd>bnext<Enter>
nnoremap <leader>fd <cmd>bprev<Enter>
nnoremap <leader>dc <cmd>bdelete<Enter>
