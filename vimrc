set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'geoffharcourt/vim-matchit'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'AutoComplPop'
call vundle#end()
filetype plugin indent on

let g:airline_theme='bubblegum'
" set status line
set laststatus=2
" enable powerline-fonts
" let g:airline_powerline_fonts = 1
" enable tabline
let g:airline#extensions#tabline#enabled = 1
" set left separator
let g:airline#extensions#tabline#left_sep = ' '
" set left separator which are not editting
let g:airline#extensions#tabline#left_alt_sep = '|'
" show buffer number
let g:airline#extensions#tabline#buffer_nr_show = 1

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
