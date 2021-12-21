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
   
# Short-Cuts

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

## Vim-Tabs
A tab can show one or more windows and if more than one tab exists a list of tabs is shown at the top of the editor, much like tabs in a browser.

- :tabnew [filename] create a new tab, optionally opening a file
- gt/gT , :tabnext/:tabprev show next/previous tab
- :tab sball open all buffers in tabs

# Resources
## Articles to review
-  [Buffers](https://mkaz.blog/working-with-vim/buffers/)
-  [Buffers-Windows-Tabs](https://joshldavis.com/2014/04/05/vim-tab-madness-buffers-vs-tabs/)
-  [Buffer-Windows-Tabs 3D](https://dev.to/iggredible/using-buffers-windows-and-tabs-efficiently-in-vim-56jc)
## Plug-ins
- [Nerd Tree](https://docs.microsoft.com/en-us/azure/devops/boards/plans/configure-hierarchical-teams?view=azure-devops)
- [vim-airline](https://github.com/vim-airline/vim-airline)
- [vim-buffergator](https://github.com/jeetsukumaran/vim-buffergator)
- [vim-zsh-mode](https://github.com/jeffreytse/zsh-vi-mode)
