export EDITOR=/usr/bin/vim
export TERM='xterm-256color'

# less
export LESS="-MSiRXF"
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# TODO: delete this
export PAGER="/usr/bin/less"

# local::lib
#export PERL_LOCAL_LIB_ROOT="/home/eric/perl5";
#export PERL_MB_OPT="--install_base $HOME/perl5"
#export PERL_MM_OPT="INSTALL_BASE=$HOME/perl5"
#export PERL5LIB="$HOME/perl5/lib/perl5/i686-linux:$HOME/perl5/lib/perl5/i686-linux/auto:$HOME/perl5/lib/perl5/i386-linux:$HOME/perl5/lib/perl5/i686-linux-gnu-thread-multi-64int:$HOME/perl5/lib/perl5/i686-linux-gnu-thread-multi-64int/auto:$HOME/perl5/lib/perl5"
export PERL5LIB=.:./lib:$PERL5LIB

# perlbrew
export PERLBREW_ROOT=/home/eric/perl5/perlbrew
[ -x $PERLBREW_ROOT ] && source ${PERLBREW_ROOT}/etc/bashrc

# cpanm
#export PERL_CPANM_OPT="--local-lib=~/perl5"
