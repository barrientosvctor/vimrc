" Windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Split windows
nnoremap <leader>ty <cmd>vsp<CR><C-w>l
nnoremap <leader>tx <cmd>split<CR><C-w>j

" Terminal
nnoremap <leader>tv <cmd>vert term<CR>
nnoremap <leader>th <cmd>term<CR>
tnoremap <leader>zz <C-\><C-n>
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l

" Refresh syntax highlighting
nnoremap <F12> <Esc><cmd>syntax sync fromstart<CR>

" Comment / uncomment code blocks
noremap <leader>gcc :norm i
noremap <leader>gcn :norm x

" Resize vim split
nnoremap t<left> <C-w>>
nnoremap t<right> <C-w><
nnoremap t<up> <C-w>+
nnoremap t<down> <C-w>-

" Tabs
nnoremap <leader>te <cmd>tabedit<CR>
nnoremap <leader>tn <cmd>tabnext<CR>
nnoremap <leader>tp <cmd>tabprevious<CR>

" Buffers
nnoremap <leader>bn <cmd>bnext<CR>
nnoremap <leader>bp <cmd>bprev<CR>
nnoremap <leader>bd <cmd>bdelete<CR>
