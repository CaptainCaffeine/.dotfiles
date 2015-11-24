call plug#begin('~/.vim/plugins')

Plug 'hdima/python-syntax'
Plug 'nanotech/jellybeans.vim'
Plug 'lervag/vimtex'
Plug 'bling/vim-airline'
Plug 'bling/vim-bufferline'

call plug#end()

colorscheme jellybeans

let python_version_3 = 1
let python_highlight_all = 1
let python_highlight_indent_errors = 0
let python_highlight_space_errors = 0
let g:vimtex_quickfix_open_on_warning=0
let g:vimtex_fold_envs=0
let g:airline_powerline_fonts=1
let g:airline#extensions#bufferline#enabled=1
" turn tabs into 4 spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set shiftround
set autoindent
" mark with $ instead of deleting the text when using the change commmand
set cpoptions+=$
" enable statusline
set laststatus=2
" get rid of all bells
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
" disable default mode indicator on the command line
set noshowmode

let maplocalleader = ","
let mapleader = " "

" map j and k to gj and gk, to change the default behaviour from 'go to next
" line' to 'go to next row'
noremap j gj
noremap k gk

" faster saving and quitting
noremap <leader>w :w<CR>
noremap <leader>q :q<CR>
noremap <leader>Q :q!<CR>
noremap <leader>x :x<CR>
