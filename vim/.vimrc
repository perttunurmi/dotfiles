let mapleader = " "
set nocompatible

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

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

nnoremap <leader>sf :FZF <Enter>
nnoremap <leader><leader> :Buffers <Enter>

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
