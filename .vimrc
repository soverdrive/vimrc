call plug#begin('~/.vim/plugged')
" awesome go plugin
Plug 'fatih/vim-go'
" I forgot
Plug 'ctrlpvim/ctrlp.vim'
" autocompletion lib for go, but f**k `fzf` plugin disabling omnicomplete
Plug 'nsf/gocode'
" support close tag detection
Plug 'alvan/vim-closetag'
" awesome fuzzy search based on active vim window root directory
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()

set nocompatible
filetype off
filetype plugin indent on
" set number
set nu
set ruler
" highlighting search found
set hlsearch
set statusline+=%F
set laststatus=2
" suppose to turn on omnicomplete
set omnifunc=syntaxcomplete#Complete
" default split vertical set to be at right pane
set splitright
" default split horizontal set to be at bottom pane
set splitbelow
" dunno the effect
set noswapfile
" fix tab completion
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
" set arrow key to do absolutely NOTHING!
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
" set return key to clear search result
nnoremap <CR> :noh<CR><CR>

let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1

let g:closetag_filenames = "*.html,*.xhtml,*.phtml"
