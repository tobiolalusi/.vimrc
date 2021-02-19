set nocompatible
set secure
filetype plugin indent on

" --- vim-plug plugins ---
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'wakatime/vim-wakatime'
" Plug 'https://github.com/ycm-core/YouCompleteMe'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'dense-analysis/ale'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'neovimhaskell/haskell-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" --- vim config ---
colorscheme gruvbox
set background=dark

set number
set relativenumber
set visualbell
set noerrorbells

set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set autoindent
set nowrap
set linebreak
set scrolloff=8

set smartcase
set incsearch
set nohlsearch

set encoding=utf-8
set noswapfile
set nobackup
set clipboard=unnamedplus

set undodir=~/.vim/undodir
set undofile
set undolevels=1000
set history=1000

" --- airline config ---
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts=1

" --- nerdtree ---
let NERDTreeIgnore=['\.git$']
let NERDTreeShowHidden = 1
noremap <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" --- Ack ---
nnoremap <C-a> :Ack<CR>

" --- ALE ---
let g:ale_linters = {'asm': []}

" --- Template config ---
if has("autocmd")
    augroup templates
        autocmd BufNewFile *.* silent! execute '0r ~/.vim/templates/_.'.expand("<afile>:e")
    augroup END
endif

" Haskell syntax highlighting color groups

hi! link haskelltype gruvboxyellow

hi! link haskellidentifier gruvboxgreen

hi! link haskellseparator gruvboxfg3
hi! link haskelldelimiter gruvboxfg3
hi! link haskelloperators gruvboxblue
hi! link haskellbacktick haskelloperators

hi! link haskellstatement gruvboxorange

hi! link haskellconditional gruvboxred
hi! link haskellkeyword gruvboxred
hi! link haskelllet gruvboxred
hi! link haskellwhere gruvboxred

hi! link haskelldefault gruvboxaqua
hi! link haskellbottom gruvboxaqua
hi! link haskellblockkeywords gruvboxaqua
hi! link haskellimportkeywords gruvboxaqua
hi! link haskelldeclkeyword gruvboxaqua
hi! link haskelldecl gruvboxaqua
hi! link haskellderiving gruvboxaqua
hi! link haskellassoctype gruvboxaqua

hi! link haskellnumber gruvboxpurple
hi! link haskellpragma gruvboxpurple

hi! link haskellstring gruvboxgreen
hi! link haskellchar gruvboxgreen

