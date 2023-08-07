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

call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
" Add other plugins here
call plug#end()

let mapleader = " "
nnoremap h :wincmd h<CR>
nnoremap j :wincmd j<CR>
nnoremap k :wincmd k<CR>
nnoremap l :wincmd l<CR>

nnoremap tt :NERDTreeToggle<CR>
