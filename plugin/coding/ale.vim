let g:ale_hover_cursor = 0

let g:ale_linters = {
\   'javascript': ['standard', 'eslint'],
\   'typescript': ['eslint'],
\   'c': ['clang-format'],
\   'cpp': ['clang-format']
\}

let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'typescript': ['prettier'],
\   'css': ['prettier'],
\   'c': ['clang-format'],
\   'cpp': ['clang-format']
\}

let g:ale_linters_explicit = 1
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
