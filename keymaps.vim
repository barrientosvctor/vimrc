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

" -- git files (git status)
nnoremap <leader>zg :GFiles?<Enter>

" -- open old buffers
nnoremap <leader>zh :History<Enter>

" Resize vim split
nnoremap t<left> <C-w>>
nnoremap t<right> <C-w><
nnoremap t<up> <C-w>+
nnoremap t<down> <C-w>-

" Tabs
nnoremap <leader>as :tabnext<Enter>
nnoremap <leader>sa :tabprevious<Enter>

" Buffers with Vim airline
nnoremap <leader>df :bnext<Enter>
nnoremap <leader>fd :bprev<Enter>
nnoremap <leader>dc :bdelete<Enter>
