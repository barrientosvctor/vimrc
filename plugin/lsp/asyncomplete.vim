let g:asyncomplete_auto_completeopt = 0
set completeopt=menuone,noinsert,noselect,preview   " it's nedeed to show language servers's autocompletion

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<C-s>"
inoremap <expr> <C-n> pumvisible() ? "\<C-n>" : "\<C-s>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<C-a>"
inoremap <expr> <C-p> pumvisible() ? "\<C-p>" : "\<C-a>"

inoremap <expr> <CR> pumvisible() ? asyncomplete#close_popup() : "\<CR>"
imap <C-f> <Plug>(asyncomplete_force_refresh)
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
