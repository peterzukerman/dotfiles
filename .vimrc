set nocompatible

" show line numbers
set number

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
set cursorline

set encoding=UTF-8

" show the matching part of the pair for [] {} and ()
set showmatch

" for colorscheme

call plug#begin('~/.vim/plugged')


Plug 'neoclide/coc.nvim'
Plug 'preservim/nerdtree'
Plug 'ntk148v/vim-horizon'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
"Plug 'jiangmiao/auto-pairs'
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'

call plug#end()

syntax enable

if exists("g:loaded_webdevicons")
	call webdevicons#refresh()
endif

set termguicolors
colorscheme horizon
let g:lightline = { 'colorscheme': 'horizon' }

set laststatus=2

