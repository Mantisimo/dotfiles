nnoremap <silent> <leader>n :NERDTreeToggle<CR>
nnoremap <silent> <C-n> :NERDTreeFocus<CR>
nnoremap <silent> <leader>l :NERDTreeFind<cr>
let NERDTreeMapQuit='<esc>'
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" autocmd! FileType nerdtree tnoremap <buffer> <esc> <leader>n
