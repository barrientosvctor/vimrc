let g:asyncomplete_auto_completeopt = 0

" Fern
" It is important to me that every mapping from NERDTree continues to work.
" nt = open nerdtree, nf = open nerdtree focusing on the current buffer
nmap <Leader>nt :Fern . -drawer -width=30 -toggle<CR>
nmap <Leader>nf :Fern . -drawer -width=30 -toggle -reveal=%<CR>

" Making my own mappings so that it inherits behaviours from NERDTree.
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
    nmap <buffer> o <Plug>(fern-my-expand-or-collapse)
    nmap <buffer> <CR> <Plug>(fern-my-expand-or-collapse)
    nmap <buffer> O <Plug>(fern-action-collapse)
    nmap <buffer> R <Plug>(fern-action-reload)
    nmap <buffer> m <Plug>(fern-action-choice)
    nmap <buffer> i <Plug>(fern-action-open:vsplit)
    nmap <buffer> s <Plug>(fern-action-open:split)
    nmap <buffer> z <Plug>(fern-action-zoom)
    nmap <buffer> A <Plug>(fern-action-zoom:reset)
endfunction

augroup fern
    autocmd! *
    autocmd FileType fern setlocal norelativenumber
    autocmd FileType fern setlocal nonumber
    autocmd FileType fern call s:init_fern()
augroup END

" Light appearance
let g:fern#renderer#default#collapsed_symbol = '▷ '
let g:fern#renderer#default#expanded_symbol  = '▼ '
let g:fern#renderer#default#leading          = ' '
let g:fern#renderer#default#leaf_symbol      = '  '
let g:fern#renderer#default#root_symbol      = '~ '

" Airline
let g:airline_theme="base16_twilight"

" vim-lsp
let g:lsp_diagnostics_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gs <plug>(lsp-document-symbol-search)
    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END
