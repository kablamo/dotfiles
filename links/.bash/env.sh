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
export PERLBREW_ROOT="$HOME/perl5/perlbrew"
if [[ -x $PERLBREW_ROOT ]] ; then
    source ${PERLBREW_ROOT}/etc/bashrc
    export PERL_CPANM_OPT="--local-lib=$PERLBREW_ROOT/perls/perl-5.16.3"
    export MY_PERL_LIB=$PERLBREW_ROOT/perls/perl-5.16.3/lib
    # I don't think I need these
    #export PERL_MB_OPT="--install_base $MY_PERL_LIB/perl5" 
    #export PERL_MM_OPT=INSTALL_BASE=$MY_PERL_LIB/perl5 
    export PERL5LIB=$MY_PERL_LIB/5.16.3
    export PERL5LIB=$MY_PERL_LIB/site_perl:$PERL5LIB
    export PERL5LIB=$MY_PERL_LIB/perl5/i686-linux-gnu-thread-multi-64int:$PERL5LIB
    export PERL5LIB=$MY_PERL_LIB/perl5/i686-linux:$PERL5LIB
    export PERL5LIB=$MY_PERL_LIB/perl5:$PERL5LIB
    export PERL5LIB=.:./lib:$PERL5LIB
fi
