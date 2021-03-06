call plug#begin('~/.vim/plugins')

Plug 'nanotech/jellybeans.vim'
Plug 'lervag/vimtex'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/syntastic'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'tikhomirov/vim-glsl'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'

call plug#end()

colorscheme jellybeans

let g:vimtex_quickfix_open_on_warning = 0
" set okular as the pdf viewer for vimtex
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
let g:vimtex_view_general_options_latexmk = '--unique'
" Vim-airline settings
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#checks = []
" Syntastic settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_check_header = 1
let g:syntastic_enable_signs = 0
let g:syntastic_quiet_messages = {'regex': 'pragma once in main file'}
let g:syntastic_cpp_config_file = '.syntastic_cpp_config'
" Ctrlp settings
let g:ctrlp_map = '<leader>p'
let g:ctrlp_user_command = 'rg --glob !externals/ --files %s'
let g:ctrlp_use_caching = 0
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
" fix slow exit of Insert mode
set ttimeoutlen=50
set timeoutlen=1000
" get rid of all bells
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
" disable default mode indicator on the command line
set noshowmode
" search up the directory structure until we find the tags file
set tags=./tags;/,./\.git/tags;/
" set :grep to use ripgrep
set grepprg=rg\ --vimgrep
" automatically equalize window sizes after a resize event
autocmd VimResized * wincmd =

" change the cursor shape to a beam in insert mode and a block in normal mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
" reset the cursor shape when entering Vim. The redraw! is to clear the
" escape sequence from the statusline.
autocmd VimEnter * silent execute "!echo -ne \"\e[2 q\"" | redraw!

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

" make it easier to go to the start of the current line's text
noremap <leader>0 ^

" faster window movement
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" easier ctags
nnoremap <leader>] <C-]>
nnoremap <leader>[ <C-T>
