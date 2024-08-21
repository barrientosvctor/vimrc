function! util#ToggleBackground() abort
    if &background == "dark"
        set background=light
    else
        set background=dark
    endif
endfunction
