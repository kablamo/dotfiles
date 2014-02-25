export EDITOR=/usr/bin/vim
export TERM='xterm-256color'

# less
export LESS="-MSiRXF"
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# TODO: delete this
export PAGER="/usr/bin/less"

# https://github.com/rupa/z
. ~/bin/z.sh

# all my envs! plenv, rbenv, pyenv, ndenv, etc
[ -x $HOME/.anyenv ] && eval "$(anyenv init -)"

# make it easier to Perl
export PERL5LIB=./lib:./local/lib/perl5:$PERL5LIB
