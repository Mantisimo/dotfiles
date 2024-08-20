" Quit all
nnoremap <silent> ZA :qa!<CR>

" Quit all diffs, exits with non zero, causes git difftool or mergetool to stop looking at other files
nnoremap <silent> ZD :cq<CR>

" Delete buffer and loader previously opened
nnoremap <silent> <Leader>q :bp\|bd#<CR>

" Close all buffers except this one
" rewriten to close all buffers except the current one, see bottom of file
"nnoremap <silent> <leader>o :%bd\|e#\|bd#<cr>

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


function! IsAngularProject()
    return filereadable(findfile('angular.json', '.;'))
endfunction

if IsAngularProject()
    " TypeScript file mappings
    autocmd FileType typescript nnoremap <buffer> <Space><Space> :edit %<.html<CR>
    autocmd FileType typescript nnoremap <buffer> <Space>c       :edit %<.css<CR>
    autocmd FileType typescript nnoremap <buffer> <Space>s       :edit %<.test.ts<CR>

    " Mapping to switch from .test.ts back to .ts
    autocmd BufRead,BufNewFile *.test.ts nnoremap <buffer> <Space>b :edit %:r:r.ts<CR>

    " HTML file mappings
    autocmd FileType html nnoremap <buffer> <Space><Space> :edit %<.ts<CR>
    autocmd FileType html nnoremap <buffer> <Space>c       :edit %<.css<CR>
    autocmd FileType html nnoremap <buffer> <Space>s       :edit %<.test.ts<CR>

    " CSS file mappings
    autocmd FileType css nnoremap <buffer> <Space>t       :edit %<.ts<CR>
    autocmd FileType css nnoremap <buffer> <Space>h       :edit %<.html<CR>
    autocmd FileType css nnoremap <buffer> <Space>s       :edit %<.test.ts<CR>
endif

" Function to close all buffers except the current one and terminal buffers
function! CloseAllButCurrent()
    let current_buf = bufnr('%')
    let buffers = filter(range(1, bufnr('$')), 'buflisted(v:val)')

    for buf in buffers
        if buf != current_buf && getbufvar(buf, '&buftype') != 'terminal'
            execute 'bdelete' buf
        endif
    endfor
    redraw!
endfunction

" Map the function to <leader>o
nnoremap <silent> <leader>o :call CloseAllButCurrent()<CR>
