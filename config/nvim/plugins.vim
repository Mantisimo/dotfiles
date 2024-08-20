
" load vim-plug
if empty(glob("~/.config/nvim/autoload/plug.vim"))
    execute '!mkdir -p ~/.config/nvim/autoload'
    execute '!curl -fLo ~/.config/nvim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'yaegassy/coc-cucumber', {'do': 'yarn install --frozen-lockfile'}
Plug 'tomasr/molokai'
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/nerdcommenter'
Plug 'Raimondi/delimitMate'
Plug 'davidhalter/jedi-vim'
Plug 'tpope/vim-surround'
"Plug 'leafgarland/typescript-vim'
Plug 'diepm/vim-rest-console'
Plug 'jreybert/vimagit'
Plug 'akinsho/toggleterm.nvim'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-fugitive'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'L3MON4D3/LuaSnip'
Plug 'Mantisimo/friendly-snippets'
Plug 'github/copilot.vim'
Plug 'sheerun/vim-polyglot'
Plug 'OmniSharp/omnisharp-vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'leafOfTree/vim-svelte-plugin'
" Plug 'tpope/vim-cucumber'
call plug#end()

let s:context=expand("<sfile>:p:h")

for f in split(glob(s:context . '/plugin-settings/*.{vim,lua}'), '\n')
    if fnamemodify(f, ":e") == 'lua'
        exe 'lua dofile("' . fnamemodify(f, ":p") . '")'
    else
        exe 'source' f
    endif
endfor

for f in split(glob(s:context . '/plugin-custom/*.{vim,lua}'), '\n')
   if fnamemodify(f, ":e") == 'lua'
       exe 'lua dofile("' . fnamemodify(f, ":p") . '")'
   else
       exe 'source' f
   endif
endfor


