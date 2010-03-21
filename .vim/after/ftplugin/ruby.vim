set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set textwidth=78
set formatoptions=wroqa2tc
autocmd BufWritePre * :%s/\s\+$//e
