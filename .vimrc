set nocompatible               " be improved
filetype off                   " required!

let vundleAlreadyExists=1
let s:vundle_dir=expand('$HOME/.vim/bundle/vundle', 1)

if !isdirectory(s:vundle_dir)
    echo "Installing Vundle..."
    echo ""
    if isdirectory(s:vundle_dir) == 0
        echo "creating directory '" . s:vundle_dir . "'"
        call mkdir(s:vundle_dir, 'p')
    endif
    execute 'silent !git clone https://github.com/gmarik/vundle "' . s:vundle_dir . '"'
    let vundleAlreadyExists=0
endif


set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" The list of bundles is sorted!
"Bundle 'node.js'
"Bundle 'nodeunit.vim'
"Bundle 'pangloss/vim-javascript'
"Bundle 'vim-perl/vim-perl'
Bundle 'CSApprox'
Bundle 'Tabular'
Bundle 'Tagbar'
Bundle 'VimOutliner'
Bundle 'ack.vim'
Bundle 'junegunn/seoul256.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'nanotech/jellybeans.vim'
Bundle 'netrw.vim'
Bundle 'perlomni.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'snipMate'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-markdown'
Bundle 'trcjr/vim-perl'
Bundle 'trcjr/vimoutliner'
Bundle 'unimpaired.vim'
Bundle 'vim-scripts/Gundo'
Bundle 'vim-scripts/bufexplorer.zip'
Bundle 'w0ng/vim-hybrid'

if vundleAlreadyExists == 0
    BundleInstall
    quit
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



syntax on

" backspaces over everything in insert mode
set backspace=indent,eol,start

" make netrw be quiet
let g:netrw_silent = 1

" Indent
set autoindent
set tabstop=4 "set tab character to 4 characters"
set shiftwidth=4 "indent width for autoindent"
set smartindent
set expandtab

set incsearch
set ignorecase
set smartcase
set visualbell
set noerrorbells
set hlsearch

set nobackup
set noswapfile

" Status line
set statusline=%f " tail of the filename
set statusline+=%{fugitive#statusline()}
set statusline+=%=      "left/right separator
set statusline+=%{StatuslineCurrentHighlight()}\ \ "current highlight
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
set laststatus=2        " Always show status line

" warning for mixed indenting
set statusline+=%#error#
set statusline+=%{StatuslineTabWarning()}
set statusline+=%*

set statusline+=%h      "help file flag
set statusline+=%y      "filetype
set statusline+=%r      "read only flag
set statusline+=%m      "modified flag

" line tracking
set number
set numberwidth=5

" clear recent search highlighting with space
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" save files as root without prior sudo
cmap w!! w !sudo tee % >/dev/null

set list
set listchars=tab:.\ ,extends:#,nbsp:.,trail:.
set listchars=tab:▸\ ,eol:¬,extends:#,nbsp:.,trail:.
set listchars=tab:▸\ ,eol:¬,extends:#,nbsp:.,trail:.
set listchars=tab:▸\ ,extends:#,nbsp:.,trail:.

"let s:theoToggleCharsState = 0
"function TheoToggleListChars ()
"    if s:theoToggleCharsState == 0
"        set listchars=tab:.\ ,trail:.,extends:#,nbsp:.
"        let s:theoToggleCharsState = 1
"    else
"        set listchars=tab:▸\ ,eol:¬,extends:#,nbsp:.,trail:.
"    endif
"endfunction
"map <F7> :call TheoToggleListChars()<cr>

" shortcuts
inoremap jj <Esc>

nnoremap ; :

let mapleader = ","

map <leader>R :source ~/.vimrc<cr>

" NERDTree shortcuts
map <Leader>, :NERDTreeToggle<cr>
map <Leader>t :tabnew<cr>
map <Leader>h :tabprevious<cr>
map <Leader>l :tabnext<cr>
map <Leader>w :tabclose<cr>
map <leader>F :NERDTreeFind<cr>

let NERDTreeShowLineNumbers=1
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2
let NERDTreeWinSize=41
let NERDTreeIgnore=['CVS']
let g:NERDTreeDirArrows=0

" Opens nerdtree and puts focus in edited file
"autocmd VimEnter * exe 'NERDTree' | wincmd l | exe 'NERDTreeToggle'



nnoremap <F5> :GundoToggle<cr>
noremap  <leader>gu :GundoToggle<cr>

map <leader>tts :%s/\s\+$//<cr>


set colorcolumn=0
set nocursorline
set nocursorcolumn
set so=99999


set background=dark
"colorscheme solarized
colorscheme jellybeans
"colorscheme seoul256


function! StatuslineTabWarning()
    if !exists("b:statusline_tab_warning")
        let tabs = search('^\t', 'nw') != 0
        let spaces = search('^ ', 'nw') != 0

        if tabs && spaces
            let b:statusline_tab_warning =  '[mixed-indenting]'
        elseif (spaces && !&et) || (tabs && &et)
            let b:statusline_tab_warning = '[&et]'
        else
            let b:statusline_tab_warning = ''
        endif
    endif
    return b:statusline_tab_warning
endfunction

" return the syntax highlight group under the cursor ''
function! StatuslineCurrentHighlight()
    let name = synIDattr(synID(line('.'),col('.'),1),'name')
    if name == ''
        return ''
    else
        return '[' . name . ']'
    endif
endfunction


"  ____           _
" |  _ \ ___ _ __| |
" | |_) / _ \ '__| |
" |  __/  __/ |  | |
" |_|   \___|_|  |_|



" Perl shortcuts
map <Leader>pd :!perldoc %<cr>
map <Leader>M :!perl % daemon --reload<cr>
map <Leader>x :!perl -Ilib %<cr>

" perltidy
autocmd BufRead,BufNewFile *.t,*.pl,*.plx,*.pm,*.cgi command! -range=% -nargs=* Tidy <line1>,<line2>!perltidy -q
autocmd BufRead,BufNewFile *.t,*.pl,*.plx,*.pm,*.cgi noremap <Leader>pt :Tidy<CR>
autocmd BufRead,BufNewFile *.t,*.pl,*.plx,*.pm,*.cgi set filetype=perl

" perldoc for module || perl command
noremap K :!perldoc <cword> <bar><bar> perldoc -f <cword><cr>


"  ____        _
" |  _ \ _   _| |__  _   _
" | |_) | | | | '_ \| | | |
" |  _ <| |_| | |_) | |_| |
" |_| \_\\__,_|_.__/ \__, |
"                    |___/

autocmd FileType ruby set tabstop=2
autocmd FileType ruby set shiftwidth=2
autocmd FileType ruby set expandtab
autocmd FileType ruby set softtabstop=2



"  __  __ _
" |  \/  (_)___  ___
" | |\/| | / __|/ __|
" | |  | | \__ \ (__
" |_|  |_|_|___/\___|
"

" ctrlp
let g:ctrlp_cmd = 'CtrlPMixed'


" tagBar
nmap <F8> :TagbarToggle<CR>
map <silent><Leader>tb :TagbarToggle<cr>
let g:tagbar_autofocus = 1

"set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
"set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

set wildignore+=*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*.swp,*.zip,*.exe  " Windows




"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
