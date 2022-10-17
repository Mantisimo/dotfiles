" Quit all
nnoremap <silent> ZA :qa!<CR>

" Quit all diffs, exits with non zero, causes git difftool or mergetool to stop looking at other files
nnoremap <silent> ZD :cq<CR>

" Delete buffer and loader previously opened
nnoremap <silent> <Leader>q :bp\|bd#<CR>

" Close all buffers except this one
nnoremap <silent> <leader>o :%bd\|e#\|bd#<cr>

"Easy navigation
" nnoremap <C-h> <C-w>h
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-l> <C-w>l

nnoremap <silent> <leader>] :cnext<CR>
nnoremap <silent> <leader>[ :cprevious<CR>

nnoremap <silent> <esc> :nohl<CR>
"shift alt + greater less than keys
tnoremap ¯ : tabprevious<cr>
tnoremap ˘ : tabnext<cr>
nnoremap ¯ : tabprevious<cr>
nnoremap ˘ : tabnext<cr>

"alt + greater less than keys
tnoremap ≤ : <C-\><C-n>bp<cr>
tnoremap ≥ : <C-\><C-n>bn<cr>
nnoremap ≤ : bp<cr>
nnoremap ≥ : bn<cr>

imap jj <Esc>

" Make yanking of a line work properly
nnoremap Y ^Y
vnoremap Y ^Y

" Yank full line without newline character
nnoremap <leader>Y ^y$
vnoremap <leader>Y ^y$

nnoremap <silent> <leader>ev :e $MYVIMRC<CR>$gf

