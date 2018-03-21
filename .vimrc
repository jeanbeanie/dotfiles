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
"let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ale#enabled = 1

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'  " Required
Plugin 'w0rp/ale'
Plugin 'vim-airline/vim-airline'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'moll/vim-node'
"Plugin 'autozimu/LanguageClient-neovim', {
    "\ 'branch': 'next',
    "\ 'do': 'bash install.sh',
    "\ }
call vundle#end() 

filetype plugin indent on " Required

let g:ale_sign_style_error = '💔'
let g:ale_sign_style_warning = '💘 '
let g:ale_sign_info = 'I'
let g:ale_sign_error = '☠ '
let g:ale_sign_warning = '😈 '
highlight clear ALEErrorSign
highlight clear ALEWarningSign
highlight clear SignColumn
