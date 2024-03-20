" Windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Split windows
nnoremap <leader>ty <cmd>vsp<Enter><C-w>l
nnoremap <leader>tx <cmd>split<Enter><C-w>j

" Terminal
nnoremap <leader>tv <cmd>vert term<Enter> " vertical terminal
nnoremap <leader>th <cmd>term<Enter> "horizontal terminal
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
noremap <leader>gcc :norm i
noremap <leader>gcn :norm x

" Resize vim split
nnoremap t<left> <C-w>>
nnoremap t<right> <C-w><
nnoremap t<up> <C-w>+
nnoremap t<down> <C-w>-

" Tabs
nnoremap <leader>te <cmd>tabedit<Enter>
nnoremap <leader>tn <cmd>tabnext<Enter>
nnoremap <leader>tp <cmd>tabprevious<Enter>

" Buffers
nnoremap <leader>bn <cmd>bnext<Enter>
nnoremap <leader>bp <cmd>bprev<Enter>
nnoremap <leader>bd <cmd>bdelete<Enter>
