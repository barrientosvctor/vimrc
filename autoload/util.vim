function util#ToggleBackground() abort
    if &background == 'light'
        set background=dark
    else
        set background=light
    endif
endfunction
