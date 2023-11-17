" Hotkeys
nnoremap <C-w> :w<Enter>

" Fern
nnoremap <leader>ff :Fern . -drawer -toggle -width=30 -reveal=%<Enter>

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

" Coc.nvim
nnoremap <silent><nowait> <C-a>  :<C-u>CocList diagnostics<cr>
nnoremap <silent><nowait> <C-s>  :<C-u>CocList -I symbols<cr>

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

" Fzf keymaps
nnoremap <leader>zf :Files<Enter>

" -- git files (git status)
nnoremap <leader>zg :GFiles?<Enter>

" -- open old buffers
nnoremap <leader>zh :History<Enter>

" Resize vim split
nnoremap t<left> <C-w>>
nnoremap t<right> <C-w><
nnoremap t<up> <C-w>+
nnoremap t<down> <C-w>-

" Increment / decrement
nnoremap + <C-a>
nnoremap - <C-x>

" Tabs
nnoremap <leader>as :tabnext<Enter>
nnoremap <leader>sa :tabprevious<Enter>

" Buffers with Vim airline
nnoremap <leader>df :bnext<Enter>
nnoremap <leader>fd :bprev<Enter>
nnoremap <leader>dc :bdelete<Enter>
