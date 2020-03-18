" set terminal color to 256
" set t_Co=256
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
" set <return> key to clear search result
nnoremap <CR> :noh<CR><CR>
" set <space> key to toggle line number
nnoremap <Space> :setlocal number!<cr>

let g:closetag_filenames = "*.html,*.xhtml,*.phtml"
let NERDTreeShowHidden=1

" set NERDTree dir colour
hi Directory ctermfg=LightBlue
" set comment in vim syntax highlight
hi Comment ctermfg=LightBlue

" said this works for macOS: https://stackoverflow.com/a/11421329
" if $TMUX == ''
"     set clipboard+=unnamed
" endif
" --
" there's another solution, using third party lib
" https://stackoverflow.com/a/18674997
set clipboard^=unnamed
" install Plug if it's not available
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'gkapfham/vim-vitamin-onec'
Plug 'crusoexia/vim-monokai'
Plug 'tomasiser/vim-code-dark'
Plug 'fatih/vim-go'
call plug#end()

" set hightlight for vim-go support. disable if make vim slow.
let g:go_highlight_format_strings=1
let g:go_highlight_function_parameters=1
let g:go_highlight_function_calls=1
let g:go_highlight_functions=1
let g:go_highlight_operators=1
let g:go_highlight_types=1
let g:go_highlight_extra_types=1
let g:go_highlight_fields=1
let g:go_highlight_generate_tags=1
let g:go_highlight_variable_assignments=1
let g:go_highlight_variable_declarations=1
let g:go_fmt_command="goimports"
let g:go_template_autocreate=0
syntax on
colorscheme codedark
" colorscheme monokai
" colorscheme nord
" colorscheme vitaminonec
" set nocompatible
filetype on
filetype plugin indent on
