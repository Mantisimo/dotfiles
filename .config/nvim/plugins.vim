" load vim-plug
if empty(glob("~/.config/nvim/autoload/plug.vim"))
    if !empty($XDG_CONFIG_HOME)
        execute '!curl -fLo $NERD_TREE_ROOT/nvim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
    else
        execute '!curl -fLo ~/.config/nvim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
    endif
endif

call plug#begin('~/.config/nvim/plugged')

" Plugins that don't need extra config
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'leafgarland/typescript-vim'

" Plugins that are neater in their own file
if empty(glob("~/.config/nvim/autoload/plug.vim"))
for f in split(glob('~/.config/nvim/plugins.d/*.vim'), '\n')
    exe 'source' f
endfor

call plug#end()


