set nocompatible
filetype off

syntax on
set number
set cursorline
set hidden
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'preservim/nerdtree'

call vundle#end()
filetype plugin indent on

" Active color scheme from gruvbox
" autocmd vimenter * ++nested colorscheme gruvbox
set bg=dark
let g:gruvbox_contrast_dark = 'soft'
colorscheme gruvbox
