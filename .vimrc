set nocompatible
filetype off

" --- vundle plugins ---
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'preservim/nerdtree'
Plugin 'wakatime/vim-wakatime'

call vundle#end()
filetype plugin indent on

" --- vim config ---
colorscheme gruvbox
set background=dark

set number
set visualbell
set noerrorbells
set spell

set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set autoindent
set nowrap
set linebreak

set smartcase
set incsearch

set encoding=utf-8
set noswapfile
set nobackup
set clipboard=unnamedplus

set undolevels=1000
set history=1000

" --- airline config ---
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts=1

" --- nerdtree ---
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

