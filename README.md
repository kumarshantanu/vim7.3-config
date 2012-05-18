## vim7.3-config

Vim 7.3 configuration for Clojure and Ruby

If you are a Windows user, replace `~` with `%USERPROFILE%` below:

To install, backup old versions of `~/.vim` and `~/.vimrc` and delete them.
Then,

    $ cd vim7.3-config
    $ ln -s `pwd`/vimrc ~/.vimrc  # Windows users: cp vimrc ~/.vimrc
    $ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

Launch `vim` (or `mvim` or `gvim` as applicable), run `:BundleInstall`

Or,

    $ vim +BundleInstall +qall
