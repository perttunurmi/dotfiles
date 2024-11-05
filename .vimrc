let mapleader = " "
set nocompatible

" plugins
call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'flazz/vim-colorschemes'
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'lifepillar/vim-solarized8'
Plug 'mbbill/undotree'

call plug#end()


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


set background=dark
autocmd vimenter * ++nested colorscheme solarized8
nnoremap <leader>u :UndotreeToggle<CR>

if has("persistent_undo")
   let target_path = expand('~/.undodir')

    " create the directory and any parent directories
    " if the location does not exist.
    if !isdirectory(target_path)
        call mkdir(target_path, "p", 0700)
    endif

    let &undodir=target_path
    set undofile
endif
