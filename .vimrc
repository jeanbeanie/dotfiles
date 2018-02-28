set nocompatible
filetype off " Required

set number
set undofile
set undodir="~/.vim/undo_history/"
set undolevels=50000 
set history=1000
set showcmd
set showmode

"set visualbell
set noerrorbells visualbell t_vb=
" autocmd GUIEnter * set visualbell t_vb=

set autoread
syntax on
set noswapfile
colorscheme industry

" Indentation
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" Scrolling
set scrolloff=8
set sidescrolloff=15
set sidescroll=1

" Vim Airline Setting
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'  " Required
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'mtscout6/syntastic-local-eslint.vim'
Plugin 'moll/vim-node'
call vundle#end() 

filetype plugin indent on " Required

let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_css_checkers=['stylelint']

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_error_symbol = '☠ '
let g:syntastic_style_error_symbol = '💔 '
let g:syntastic_warning_symbol = '😈 '
let g:syntastic_style_warning_symbol = '💘 '

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

" Drop Syntastic settings at the end of the config file "
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
