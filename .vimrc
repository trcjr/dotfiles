set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
"compiler ruby         " Enable compiler support for ruby


" added by trcjr
set background=dark
set smarttab
if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
        \| exe "normal g'\"" | endif
endif
" end added by trcjr
""""""""""""""""""""""""""""""""""""""""""""""
" enter spaces when tab is pressed:
set expandtab
" do not break lines when line lenght increases
set textwidth=0
" user 4 spaces to represent a tab
set tabstop=4
set softtabstop=4
" number of space to use for auto indent
" you can use >> or << keys to indent current line or selection
" in normal mode.
set shiftwidth=4
" Copy indent from current line when starting a new line.
set autoindent
" makes backspace key more powerful. 
set backspace=indent,eol,start
" shows the match while typing
set incsearch
" case insensitive search
set ignorecase
" show line and column number
set ruler
" show some autocomplete options in status bar
set wildmenu

" automatically save and restore folds
"au BufWinLeave * mkview
"au BufWinEnter * silent loadview

" this lets us put the marker in the file so that
" it can be shared across and stored in version control.
set foldmethod=marker
" this is for python, put 
" # name for the folded text # {{{
" to begin marker and 
" # }}} 
" close to end it. 
set commentstring=\ #\ %s
set commentstring=\ \ #%s
" default fold level, all open, set it 200 or something
" to make it all closed. 
set foldlevel=0

" share clipboard with windows clipboard
set clipboard+=unnamed

" set viminfo='100,f1
"  minibufexplorer settings:j
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchWindows = 1

autocmd BufRead,BufNewFile *.py syntax on
autocmd BufRead,BufNewFile *.py set ai
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

set iskeyword-=_
"set formatoptions=wroqa2t
