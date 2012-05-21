## vim7.3-config

Vim 7.3 configuration for Clojure and Ruby

### Windows users

1. Install `git` and `curl` as necessary:
https://github.com/gmarik/vundle/wiki/Vundle-for-Windows

2. Replace `~` with `%USERPROFILE%` below:

### Installation

To install, backup old versions of `~/.vim` and `~/.vimrc` and delete them.
Then,

    $ cd vim7.3-config
    $ ln -s `pwd`/vimrc ~/.vimrc  # Windows users: cp vimrc ~/.vimrc
    $ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

Launch `vim` (or `mvim` or `gvim` as applicable), run `:BundleInstall`

Or,

    $ vim +BundleInstall +qall

### Navigation guide

#### Moving between windows

`Ctrl+ww` Switches between windows

`Ctrl+wh` Switches focus to the window on left

`Ctrl+wl` Switches focus to the window on right

`Ctrl+wj` Switches focus to the window up

`Ctrl+wk` Switches focus to the window down

#### Using the file-explorer `NERDTree`

To toggle the `NERDTree` window, use `Ctrl+t`

To add a file, switch to the NERDTree window and press `m` to bring up a menu

To open a file from existing list, bring cursor to desired file and press `t`

#### Moving between tabs

`Ctrl+h` Switches focus to the tab on the left

`Ctrl+l` Switches focus to the tab on the right

`Ctrl+n` Opens a new empty tab

#### Finding files

`Ctrl+p` opens up an interface to find files via fuzzy match

Follow this URL for details on this mode: https://github.com/kien/ctrlp.vim
