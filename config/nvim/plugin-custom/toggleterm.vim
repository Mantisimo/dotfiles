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
"
"
"
"
"
"

"let g:terminal_buf = 0
"let g:terminal_open = 0

"function! ToggleTerminal()
    "if g:terminal_open
        "if &buftype ==# 'terminal'
            "hide
        "else
            "execute "b" . g:terminal_buf
        "endif
    "else
        "if g:terminal_buf == 0
            "split term://$SHELL
            "resize 10
            "let g:terminal_buf = bufnr('%')
            "let g:terminal_open = 1
        "else
            "execute "b" . g:terminal_buf
            "wincmd p
        "endif
    "endif
"endfunction

"augroup TerminalPersist
    "autocmd!
    "autocmd BufLeave,WinLeave term://* let g:terminal_open = 0
    "autocmd BufEnter,WinEnter term://* let g:terminal_open = 1
    "autocmd TermClose * let g:terminal_buf = 0 | let g:terminal_open = 0
"augroup END

"nnoremap <silent> <leader>t :call ToggleTerminal()<CR>
"tnoremap <silent> <Esc> <C-\><C-n>:hide<CR>
