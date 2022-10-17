let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_custom_ignore = 'build\|dist\|node_modules\|DS_Store\|git|publish'
let g:ctrlp_show_hidden = 1
let g:ctrlp_open_multiple_files = 'r'
let g:ctrlp_open_new_file = 'r'
let g:ctrlp_arg_map = 'r'
let g:ctrlp_use_caching =0
