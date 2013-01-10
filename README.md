Dotfiles
========

The key to everything is the script [bin/dotfiles]
(https://github.com/kablamo/dotfiles/blob/master/bin/dotfiles).  It does the
following:

* If any of the files in 'link' already exist in $HOME they are copied to /tmp/dotfiles-backup/
* All the files in 'link' are linked to $HOME.
* All the files in 'copy' are copied to $HOME.

My .bashrc adds the 'bin' directory to $PATH.


How to use it
-------------

    git clone https://github.com/kablamo/dotfiles.git ~/.dotfiles
    ~/.dotfiles/bin/dotfiles

Limited Scope
-------------

My dotfiles does not do and will not do OS package installs.  I manage those
with [puppet](https://github.com/kablamo/puppet).  I should probably manage my
dotfiles with puppet too.  So far my excuse is puppet is slow and is not
always available on all systems that I use.  Not sure that this is a good
excuse.

