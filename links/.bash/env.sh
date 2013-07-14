export EDITOR=/usr/bin/vim
export TERM='xterm-256color'

# less
export LESS="-MSiRXF"
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# TODO: delete this
export PAGER="/usr/bin/less"

# https://github.com/rupa/z
. ~/bin/z.sh

# perlbrew
unset PERL5LIB
unset PERL_CPANM_OPT
PERLBREW_INIT="$HOME/.perlbrew/init"
if [[ -e $PERLBREW_INIT ]] ; then
    source $PERLBREW_INIT
    source ${PERLBREW_ROOT}/etc/bashrc
fi
