" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
" filetype on
filetype off

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Highlight cursor line underneath the cursor vertically.
set cursorcolumn

set hidden

" NO-PLUGIN SETTINGS ---------------------------------------------------- {{{
" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" FINDING FILES:
" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" NOW WE CAN:
" - Hit tab to :find by partial match
" - Use * to make it fuzzy
" THINGS TO CONSIDER:
" - :b lets you autocomplete any open buffer

" }}}

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
" Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'vim-airline/vim-airline'

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

" Airline plug-in cinfiguration ---------------------------------------------------------- {{{
" Automatically show buffers when there is only one tab
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

"" }}}
