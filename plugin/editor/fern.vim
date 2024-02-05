let g:fern#disable_default_mappings = 1

function! s:init_fern() abort
    " fern#smart#leaf allows to do something different depending on whether
    " it is a file or a folder. open will be on files, expand or collapse
    " will be on folders.
    nmap <buffer><expr>
    \ <Plug>(fern-my-expand-or-collapse)
    \ fern#smart#leaf(
    \   "\<Plug>(fern-action-open)",
    \   "\<Plug>(fern-action-expand)",
    \   "\<Plug>(fern-action-collapse)",
    \ )

    nmap <buffer> q :<C-u>quit<CR>
    nmap <buffer> I <Plug>(fern-action-hidden:toggle)
    nmap <buffer> nf <Plug>(fern-action-new-file=)
    nmap <buffer> nd <Plug>(fern-action-new-dir=)
    nmap <buffer> np <Plug>(fern-action-new-path=)
    nmap <buffer> O <Plug>(fern-action-collapse)
    nmap <buffer> R <Plug>(fern-action-reload:all)
    nmap <buffer> rm <Plug>(fern-action-remove)
    nmap <buffer> rn <Plug>(fern-action-rename)
    nmap <buffer> m <Plug>(fern-action-choice)
    nmap <buffer> s <Plug>(fern-action-open:split)
    nmap <buffer> v <Plug>(fern-action-open:vsplit)

    nmap <buffer> e <Plug>(fern-my-expand-or-collapse)
    nmap <buffer> <CR> <Plug>(fern-my-expand-or-collapse)
endfunction

augroup fern
    autocmd! *
    autocmd FileType fern setlocal norelativenumber
    autocmd FileType fern setlocal nonumber
    autocmd FileType fern call s:init_fern()
augroup END

let g:fern#renderer#default#collapsed_symbol = '▷ '
let g:fern#renderer#default#expanded_symbol  = '▼ '
let g:fern#renderer#default#leading          = ' '
let g:fern#renderer#default#leaf_symbol      = '  '
let g:fern#renderer#default#root_symbol      = '~ '
