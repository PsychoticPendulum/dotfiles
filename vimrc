set belloff=all
set noerrorbells
set backspace=indent,eol,start
set number relativenumber
set tabstop=4 softtabstop=4
set nowrap
set ruler
set smartindent
set cursorline cursorcolumn
set colorcolumn=120

highlight ColorColumn ctermbg=7 guibg=black
syntax enable

autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4
