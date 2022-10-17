"let g:term_buf = 0
"let g:term_win = 0
"
"function! Term_toggle(height)
"    if win_gotoid(g:term_win)
"        hide
"    else
"        botright new
"        exec "resize " . a:height
"        try
"            exec "buffer " . g:term_buf
"        catch
"            call termopen($SHELL, {"detach": 0})
"            let g:term_buf = bufnr("")
"        endtry
"        startinsert!
"	set nonu
"	let maplocalleader = "\\"
"        let g:term_win = win_getid()
"    endif
"endfunction
"
"nmap <leader>t :call Term_toggle(10)<cr>
"tnoremap <localleader>t <C-\><C-n>:call Term_toggle(10)<cr>
"tnoremap <esc> <C-\><C-n>:call Term_toggle(10)<cr>
"
"tnoremap <C-w>h <C-\><C-N><C-w>h
"tnoremap <C-w>j <C-\><C-N><C-w>j
"tnoremap <C-w>k <C-\><C-N><C-w>k
"tnoremap <C-w>l <C-\><C-N><C-w>l
