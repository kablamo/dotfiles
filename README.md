Dotfiles
========

My dotfiles.  This key to everything is the script
[links/bin/dotfiles][links/bin/dotfiles].  When you run it does the following:

* If any of the files in 'link' already exist in $HOME they are copied to /tmp/dotfiles-backup/
* All the files in 'link' are linked into $HOME.

My .bashrc adds the 'bin' directory to $PATH.


How to use it
=============

    cd ~
    mkdir code
    cd code
    git clone https://github.com/kablamo/dotfiles.git
    cd dotfiles
    bin/dotfiles
