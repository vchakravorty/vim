set nocompatible    " use vim defaults
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
syntax off
autocmd BufEnter * lcd %:p:h    " change working dir to current file
