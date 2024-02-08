if has("gui_running")
    set guioptions-=T " This remove the toolbar in gui vim. See options with: :h 'guioptions'
    if has("gui_win32")
        set guifont=Consolas:h14:cANSI
    endif
endif
