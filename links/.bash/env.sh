export EDITOR=/usr/bin/vim
export TERM='xterm-256color'

# less
export LESS="-MSiRXF"
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# TODO: delete this
export PAGER="/usr/bin/less"


# perlbrew
export PERLBREW_ROOT="$HOME/perl5/perlbrew"
[ -x $PERLBREW_ROOT ] && source ${PERLBREW_ROOT}/etc/bashrc
[ -x $PERLBREW_ROOT ] && export PERL_CPANM_OPT="--local-lib=$PERLBREW_ROOT/perls/perl-5.16.2"

# PERL5LIB
export PERL5LIB=.:./lib:$PERL5LIB:$PERLBREW_ROOT/perls/perl-5.16.2/lib/perl5:$PERLBREW_ROOT/perls/perl-5.16.2/lib/5.16.2
