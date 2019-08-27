" Vundle
set nocompatible
filetype off

" Vundle runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" Plugins below

call vundle#end()

" Tab indents with spaces
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" Solarized color scheme
syntax enable
set background=dark
colorscheme solarized

" Remap esc key
inoremap jj <Esc>

