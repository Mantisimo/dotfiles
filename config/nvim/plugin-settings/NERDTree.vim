"nnoremap <silent> <leader>n :NERDTreeToggle<CR>
nnoremap <silent> <C-n> :NERDTreeFocus<CR>
nnoremap <silent> <leader>l :NERDTreeFind<cr>
let NERDTreeMapQuit='<esc>'
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" autocmd! FileType nerdtree tnoremap <buffer> <esc> <leader>n
"
"
" Function to toggle NERDTree, focus on it if open, and hide if focused
function! ToggleNERDTree()
    " Check if NERDTree is open
    if exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1
        " If NERDTree is focused, close it
        if winnr() == bufwinnr(t:NERDTreeBufName)
            execute 'NERDTreeClose'
        else
            " If NERDTree is open but not focused, focus on it
            execute 'wincmd p'
        endif
    else
        " If NERDTree is not open, open it
        execute 'NERDTreeToggle'
    endif
endfunction

" Map Ctrl+n to the ToggleNERDTree function
nnoremap <silent> <C-n> :call ToggleNERDTree()<CR>
