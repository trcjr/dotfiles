set nocompatible               " be improved
filetype off                   " required!

" Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle.."
    echo ""
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let iCanHazVundle=0
endif
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

Bundle 'netrw.vim'
Bundle 'trcjr/vim-perl'
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
Bundle 'ack.vim'
Bundle 'junegunn/seoul256.vim'
Bundle 'w0ng/vim-hybrid'
"Bundle 'nodeunit.vim'
"Bundle 'node.js'
"Bundle 'pangloss/vim-javascript'




if iCanHazVundle == 0
    echo "Installing Bundles, please ignore key map error messages"
    echo ""
    silent :BundleInstall
    :quit
endif




" Setting up Vundle - the vim plugin bundler end

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
