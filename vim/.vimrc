let mapleader = " "
set nocompatible

set ttimeoutlen=100
set number
set relativenumber
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

set background=dark

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
