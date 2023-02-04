" Asyncomplete
let g:asyncomplete_auto_completeopt = 0

" Fern
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

" Fern appearance
let g:fern#renderer#default#collapsed_symbol = '▷ '
let g:fern#renderer#default#expanded_symbol  = '▼ '
let g:fern#renderer#default#leading          = ' '
let g:fern#renderer#default#leaf_symbol      = '  '
let g:fern#renderer#default#root_symbol      = '~ '

" vim-lsp
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

    let g:lsp_format_sync_timeout = 1000
    autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

" Vim airline
let g:airline_section_y = "" "Encoding section
let g:airline_section_warning = ""
let g:webdevicons_enable_airline_statusline = 0 " powerline style
let g:airline_powerline_fonts = 0 " powerline style
let g:airline_theme = "term"

" Ale.vim
let g:ale_hover_cursor=0

let g:ale_linters = {
\   'javascript': ['standard', 'eslint'],
\   'typescript': ['eslint'],
\}

let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'typescript': ['prettier'],
\   'css': ['prettier']
\}


let g:ale_linters_explicit = 1
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1

" CtrlP
let g:ctrlp_map = "<C-p>"
let g:ctrlp_cmd = "CtrlP"
