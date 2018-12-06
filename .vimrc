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

let g:closetag_filenames = "*.html,*.xhtml,*.phtml"

" load pathogen for vim plugin
execute pathogen#infect()
