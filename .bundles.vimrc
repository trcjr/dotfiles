set nocompatible               " be improved
filetype off                   " required!

let vundleAlreadyExists=1
let s:vundle_dir=expand('$HOME/.vim/bundle/vundle', 1)

"if !filereadable(s:vundle_dir)
if !isdirectory(s:vundle_dir)
    echo "Installing Vundle..."
    echo ""
    if isdirectory(expand('$VIM\bundle')) == 0
        call mkdir(expand('$VIM\bundle'), 'p')
    endif
    execute 'silent !git clone https://github.com/gmarik/vundle "' . expand('$VIM\bundle\vundle') . '"'
    let vundleAlreadyExists=0
endif

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fugitive'
Bundle 'vim-scripts/Gundo'
Bundle 'vim-scripts/bufexplorer.zip'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'nanotech/jellybeans.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'CSApprox'
Bundle 'perlomni.vim'
Bundle 'snipMate'
Bundle 'Tabular'
Bundle 'Tagbar'
Bundle 'unimpaired.vim'
Bundle 'VimOutliner'
Bundle 'cucumber.zip'

filetype plugin indent on     " required!

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
