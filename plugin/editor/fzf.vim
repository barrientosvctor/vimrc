nnoremap <leader>, <cmd>Files<cr>
nnoremap <leader>; <cmd>Buffers<cr>

" -- git files (git status)
nnoremap <leader>zg <cmd>GFiles?<Enter>

" -- open old buffers
nnoremap <leader>zh <cmd>History<Enter>

let $BAT_THEME = "ansi"

let g:fzf_buffers_jump = 1

if empty($TMUX)
    " We're not inside tmux
    let g:fzf_layout = {'window': { 'width': 0.7, 'height': 0.6 } }
    let g:fzf_preview_window = 'right:40%'
else
    " We're inside tmux
    let g:fzf_layout = {'tmux': '-p70%,60%'}
endif
