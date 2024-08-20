command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   ('git grep -i --line-number --exclude-standard '.(isdirectory(expand(".git"))?'--untracked ':'--no-index ')).shellescape(<q-args>), 0,
  \   { 'dir': getcwd() }, <bang>0)

noremap <leader>a :GGrep<CR>

"command! -bang -nargs=* GGrep
  "\ call fzf#vim#grep(
  "\   'rg --vimgrep --no-heading --line-number '.shellescape(<q-args>), 0,
  "\   { 'dir': getcwd() }, <bang>0)

"noremap <leader>a :GGrep<CR>

autocmd! FileType fzf tnoremap <buffer> <esc> <c-c>
let g:fzf_layout = { 'down': '30%' }
