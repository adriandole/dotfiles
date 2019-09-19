" Vundle
set nocompatible
filetype off

" Vundle runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins below
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-python/python-syntax'
Plugin 'tpope/vim-surround'

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
inoremap df <Esc>

" Leader and better newline commands
let mapleader=" "
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>

" Source file only if it exists
function! SourceIfExists(file)
    if filereadable(expand(a:file))
        exe 'source' a:file
    endif
endfunction

" Local-only vimrc
call SourceIfExists("~/.vimrc.local")
