" Vundle and bundles configuration
source .bundles.vimrc

syntax on

" backspaces over everything in insert mode
set backspace=indent,eol,start

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

" shortcuts
inoremap jj <Esc>

nnoremap ; :

let mapleader = ","

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


set colorcolumn=0
set nocursorline
set nocursorcolumn
set so=99999


set background=dark
"colorscheme solarized
colorscheme jellybeans


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

" perltidy
autocmd BufRead,BufNewFile *.t,*.pl,*.plx,*.pm command! -range=% -nargs=* Tidy <line1>,<line2>!perltidy -q
autocmd BufRead,BufNewFile *.t,*.pl,*.plx,*.pm noremap <Leader>pt :Tidy<CR>


set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

" ctrlp
let g:ctrlp_cmd = 'CtrlPMixed'


" tagBar
nmap <F8> :TagbarToggle<CR>
map <silent><Leader>tb :TagbarToggle<cr>
let g:tagbar_autofocus = 1

" Ruby 
autocmd FileType ruby set tabstop=2
autocmd FileType ruby set shiftwidth=2
autocmd FileType ruby set expandtab
autocmd FileType ruby set softtabstop=2

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
