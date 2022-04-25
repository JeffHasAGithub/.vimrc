nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

syntax on
set encoding=utf-8
set ttimeoutlen=10

set number
set linebreak
set showbreak=+++
set showmatch
set visualbell
set textwidth=100

set hlsearch
set smartcase
set incsearch
set ignorecase

set tabstop=2
set shiftwidth=2

set ruler
set undolevels=1000
set backspace=indent,eol,start

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim'
Plug 'raimondi/delimitmate'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'ekalinin/dockerfile.vim'
Plug 'pangloss/vim-javascript'
Plug 'fatih/vim-go'
Plug 'bling/vim-airline'
Plug 'arcticicestudio/nord-vim'
call plug#end()

colorscheme nord
