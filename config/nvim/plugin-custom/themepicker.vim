

function SetDark()
    colorscheme molokai
    set background=dark
    let g:airline_theme='dark_minimal'
endfunction

function SetLight()
    colorscheme PaperColor
    set background=light
    let g:airline_theme='papercolor'
endfunction

function ToggleLightDarkMode()
    if (&background=='light')
        call SetDark()
    else
        call SetLight()
    endif
    AirlineRefresh
    call airline#extensions#tabline#tabs#invalidate()
    call airline#extensions#tabline#buffers#invalidate()
    call airline#extensions#tabline#ctrlspace#invalidate()
    call airline#extensions#tabline#tabws#invalidate()
endfunction

nnoremap <Leader>mm : call ToggleLightDarkMode()<CR>
inoremap <Leader>mm : call ToggleLightDarkMode()<CR>


