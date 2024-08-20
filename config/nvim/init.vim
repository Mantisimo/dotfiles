
let g:coc_confing_home = '~/dev/dotfiles/config/nvim/coc-settings.json'
set nocompatible

" Current filepath
let s:context=expand("<sfile>:p:h")

function Import(name)
    let s:plugin_path = s:context . '/' . a:name . '.vim'
    if filereadable(s:plugin_path)
        execute 'source' . s:plugin_path
    endif
endfunction

call Import("defaults")
call Import("shortcuts")
call Import("plugins")
call Import("funcs")
call Import("keys")
call Import("autocmd")
call Import("theme")

call SetDark()
