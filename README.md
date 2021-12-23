# Install
1. Introduction:

   Installation requires [Git] and triggers [`git clone`] for each configured repository to `~/.vim/bundle/` by default.
   Curl is required for search.

2. Set up [Vundle]:

   ` git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

3. Configure Plugins:

   Put this at the top of your `.vimrc` to use Vundle. Remove plugins you don't need, they are for illustration purposes.

   ```vim
   set nocompatible              " be iMproved, required
   filetype off                  " required

   " set the runtime path to include Vundle and initialize
   set rtp+=~/.vim/bundle/Vundle.vim
   call vundle#begin()
   
   " let Vundle manage Vundle, required
   Plugin 'VundleVim/Vundle.vim'
   
   call vundle#end()            " required
   filetype plugin indent on    " required
   
   " To ignore plugin indent changes, instead use:
   "filetype plugin on
   "
   " Brief help
   " :PluginList       - lists configured plugins
   " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
   " :PluginSearch foo - searches for foo; append `!` to refresh local cache
   " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
   "
   " see :h vundle for more details or wiki for FAQ
   " Put your non-Plugin stuff after this line
   ```

4. Install Plugins:

   Launch `vim` and run `:PluginInstall`

   To install from command line: `vim +PluginInstall +qall`
   
5. Install Powerline Fonts
   Font are used as part of Airline plugin
> sudo apt-get install fonts-powerline


# Short-Cuts

## Enter Insert mode
- **i**	- insert at the current position
- **I**	- insert at the beginning of line
- **a**	- append just after the current cursor position
- **A**	- append at the end of line
- **o**	- Open a new line below the current line
- **O**	- Open a new line above the current line

## Copy/Paste
### Insert mode
In normal mode, one can copy (yank) with **y{motion}**, where **{motion}** is a Vim motion. For example, yw copies to the beginning of the next word. Other helpful yanking commands include:

- **yy**	- or Y – yank the current line, including the newline character at the end of the line
- **y$** – yank to the end of the current line (but don't yank the newline character); note that many people like to remap Y to y$ in line with C and D
- **yiw** – yank the current word (excluding surrounding whitespace)
- **yaw** – yank the current word (including leading or trailing whitespace)
- **ytx** – yank from the current cursor position up to and before the character (til x)
- **yfx** – yank from the current cursor position up to and including the character (find x)
Cutting can be done using **d{motion}**, including:

**dd** - cut the current line, including the newline character at the end of the line
To copy into a register, one can use "{register} immediately before one of the above commands to copy into the register {register}.

### Pasting in normal mode
In normal mode, one can use **p** to paste after the cursor, or **P** to paste before the cursor.

The variants **gp** and **gP** move the cursor after the pasted text, instead of leaving the cursor stationary.

### Pasting in insert mode
The contents of a register can be pasted while in insert mode: type **Ctrl-r** then a character that identifies the register. For example, **Ctrl-r** then **"** pastes from the default register, and **Ctrl-r** then **0** pastes from register zero which holds the text that was most recently yanked (copied)

## Vim Screen Navigation

- **G** – Go to the end of the file.
- **g** – Go to the beginning of the file.

- **H** – Go to the first line of current screen.
- **M** – Go to the middle line of current screen.
- **L** – Go to the last line of current screen.
- **ctrl+f** – Jump forward one full screen.
- **ctrl+b** – Jump backwards one full screen
- **ctrl+d** – Jump forward (down) a half screen
- **ctrl+u** – Jump back (up) one half screen

- **N%** – Go to the Nth percentage line of the file.
- **NG** – Go to the Nth line of the file.


## NERD Tree
- o to open the file in a new buffer or open/close directory.
- t to open the file in a new tab.
- i to open the file in a new horizontal split.
- s to open the file in a new vertical split.
- p to go to parent directory.
- r to refresh the current directory.

## Vim Windows movement
- Ctrl + w (hjkl)
- Ctrl + ww

## Vim Buffers
So every file you open will be placed in a Buffer, that can be displayed or not. You can cycle through buffers with 
- :bnext and :bprev commands and list them all with the 
- :buffers command.
- :buffers, :ls list all buffers
- :buffer [N] show the buffer with the provided number
- :bnext/:bprev show next/previous buffer
- :edit [filename] put a new file into a buffer
- :bdelete [N] delete the current buffer or the buffer [N]
- [N] Ctrl-^ go to buffer [N] or the previously shown buffer

Note that :q doesn’t delete a buffer, keeping it in memory, thus not removing from the buffer list.

## Vim-Windows
A Vim Window is what you see and interact with. A Window always shows a Buffer, being it from a file or just an empty one. Many windows can be opened at the same time by splitting the editor.

- Ctrl-w s, :split [filename] split the window, optionally opening a new file
- Ctrl-w v, :vsplit [filename] split the window vertically, optionally opening a new file
- :sbuffer [N] split the window and open the buffer [N]
- :sball open all buffers in windows
- Ctrl-w w/Ctrl-w W go to next/prev window
- Ctrl-w [direction] go to the window at [direction]
- :q close a window (if it is the last window it also exits the editor)
- :qa close all windows and exit the editor
Many famous Vim plugins like NERDTree uses Windows to show lists or the filesystem.
### Buffer mappings - no plug-ins
 ```vim
" Mappings to access buffers (don't use "\p" because a
" delay before pressing "p" would accidentally paste).
" \l       : list buffers
" \b \f \g : go back/forward/last-used
" \1 \2 \3 : go to buffer 1/2/3 etc
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>
" It's useful to show the buffer number in the status line.
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
```

## Vim-Tabs
A tab can show one or more windows and if more than one tab exists a list of tabs is shown at the top of the editor, much like tabs in a browser.

- :tabnew [filename] create a new tab, optionally opening a file
- gt/gT , :tabnext/:tabprev show next/previous tab
- :tab sball open all buffers in tabs

## Vim-to-Shell and Back
> **sh:** - on cmdline to go to shell
> 
> **<CTL+D>** - go back to Vim

# Resources
## Articles to review
-  [Buffers](https://mkaz.blog/working-with-vim/buffers/)
-  [Buffers-Windows-Tabs](https://joshldavis.com/2014/04/05/vim-tab-madness-buffers-vs-tabs/)
-  [Buffer-Windows-Tabs 3D](https://dev.to/iggredible/using-buffers-windows-and-tabs-efficiently-in-vim-56jc)
## Plug-ins
- [Nerd Tree](https://github.com/preservim/nerdtree)
- [vim-airline](https://github.com/vim-airline/vim-airline)
- [powerline](https://github.com/powerline)
- [vim-buffergator](https://github.com/jeetsukumaran/vim-buffergator)
- [vim-zsh-mode](https://github.com/jeffreytse/zsh-vi-mode)

## Videos
- [90% VIM without plug-ins](https://www.youtube.com/watch?v=XA2WjJbmmoM)
