set nocompatible    " use vim defaults
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" nerdtree
Plugin 'preservim/nerdtree'
" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead u

set ls=2            " always show status line
set scrolloff=3     " keep 3 lines when scrolling
set backspace=indent,eol,start   " allows backspacing over everything
set hlsearch        " highlight searches
set incsearch       " do incremental searching
set ruler           " show the cursor position all the time
set visualbell t_vb=    " turn off error beep/flash
set novisualbell    " turn off visual bell
set number          " show line numbers
set ignorecase      " ignore case when searching
set smartcase       " case enable search if there is a capital letter
set title           " show title in console title bar
set tags=tags;/     " really important for ctags (checks all dirs(upto the root) for a tag)
set expandtab       " expands tabs with spaces
filetype plugin indent on  " reqd. by taglist.vim plugin
autocmd BufEnter * lcd %:p:h    " change working dir to current file
