let g:asyncomplete_auto_completeopt = 0

inoremap <expr> <C-s> pumvisible() ? "\<C-n>" : "\<C-s>"
inoremap <expr> <C-a> pumvisible() ? "\<C-p>" : "\<C-a>"
inoremap <expr> <CR> pumvisible() ? asyncomplete#close_popup() : "\<CR>"
imap <C-f> <Plug>(asyncomplete_force_refresh)
