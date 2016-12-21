set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
call vundle#end()
filetype plugin indent on

set t_Co=256
set cursorline
set number
set mouse=a
set expandtab
set tabstop=4
set shiftwidth=4
set incsearch
set hlsearch
autocmd Filetype html setlocal ts=2 sw=2

colorscheme pixelmuerto
syntax on

nmap gh <C-w>h
nmap gj <C-w>j
nmap gk <C-w>k
nmap gl <C-w>l

map <C-n> :NERDTreeToggle<CR>
