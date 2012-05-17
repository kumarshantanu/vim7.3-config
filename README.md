## vim7.3-config

Vim 7.3 configuration for Clojure and Ruby

To install, backup old versions of `~/.vim` and `~/.vimrc` and delete them.
Then,

    $ cd vim7.3-config
    $ ln -s `pwd`/vimrc ~/.vimrc
    $ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

Launch `vim`, run `:BundleInstall`

Or,

    $ vim +BundleInstall +qall
