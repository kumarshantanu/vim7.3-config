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
