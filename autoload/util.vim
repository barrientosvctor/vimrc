function util#ToggleBackground() abort
    if &background == 'light'
        set background=dark
    else
        set background=light
    endif
endfunction

function! util#SynStack() abort
  for i1 in synstack(line("."), col("."))
    let i2 = synIDtrans(i1)
    let n1 = synIDattr(i1, "name")
    let n2 = synIDattr(i2, "name")
    echo n1 "->" n2
  endfor
endfunction
