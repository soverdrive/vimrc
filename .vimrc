call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'nsf/gocode'
Plug 'alvan/vim-closetag'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
call plug#end()

set nocompatible
filetype off
filetype plugin indent on
set nu
set ruler
set hlsearch
set number
set statusline+=%F
set laststatus=2
set omnifunc=syntaxcomplete#Complete
set splitright
set splitbelow
set noswapfile
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
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
