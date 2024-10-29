let mapleader = " "
set nocompatible
set ttimeoutlen=100

set number
set relativenumber
set laststatus=2
set scrolloff=8
set sidescroll=5
set smarttab
set incsearch
set autoread
syntax on
set ignorecase
set smartcase
set wildmode=longest,list,full
set path+=**
set wildmenu
set nowrap

nnoremap <leader>s :find *

" plugins
call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'flazz/vim-colorschemes'
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'

call plug#end()
