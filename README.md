Dotfiles
========

The key to everything is the script [bin/dotfiles]
(https://github.com/kablamo/dotfiles/blob/master/bin/dotfiles).  It does the
following:

* Ignores the 'bin' directory because my .bashrc adds the 'bin' directory to
  $PATH.
* All the files in 'link' are linked to $HOME.
* All the files in 'copy' are copied to $HOME.
* Foreach git submodule in the top level of the repo:
    * If it has a 'bin' directory, link all the executable files in there to
      '$HOME/bin/'.
    * If there is no 'bin' directory, link all the executable files in the top
      level of the submodule directory to '$HOME/bin/'.
* When links are created, if the file already exists it is moved to
  '/tmp/dotfiles-backup/' before the link is created.  A message is printed to
  tell you when this happens.


How to use it
-------------

    git clone https://github.com/kablamo/dotfiles.git ~/.dotfiles
    ~/.dotfiles/bin/dotfiles

Limited Scope
-------------

My dotfiles does not do and will not do OS package installs.  I manage those
with [puppet](https://github.com/kablamo/puppet).  I should probably manage my
dotfiles with puppet too.  So far my excuse is puppet is not always available
on all systems that I use.  

