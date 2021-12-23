set nocompatible
filetype off

syntax on
set number
set cursorline
set hidden

" zo to open a single fold under the cursor.
" zc to close the fold under the cursor.
" zR to open all folds.
" zM to close all folds.
" PLUGINS ---------------------------------------------------------------- {{{
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'preservim/nerdtree'
Plugin 'jeetsukumaran/vim-buffergator'

call vundle#end()
" }}}


" COLORSCHEME ---------------------------------------------------------------- {{{
filetype plugin indent on
" Active color scheme from gruvbox
" autocmd vimenter * ++nested colorscheme gruvbox
set bg=dark
let g:gruvbox_contrast_dark = 'soft'
colorscheme gruvbox
"" }}}


" NERDTree short-cut---------------------------------------------------------- {{{
"
" Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>
" Exit Vim if NERDTree is the only window remaining in the only tab.
 autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

"" }}}
