export LESS="-MSiRXF"
export EDITOR=/usr/bin/vim
export TERM='xterm-256color'
[ -z "$PS1" ] && return            # do nothing unless running interactively
HISTCONTROL=ignoredups:ignorespace # see HISTCONTROL in bash(1)
shopt -s histappend                # append to the history file, don't overwrite
HISTSIZE=1000                      # see HISTSIZE in bash(1)
HISTFILESIZE=2000                  # see HISTFILESIZE in bash(1)

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w ⚡ '

# local::lib
export PERL_LOCAL_LIB_ROOT="/home/eric/perl5";
export PERL_MB_OPT="--install_base $HOME/perl5"
export PERL_MM_OPT="INSTALL_BASE=$HOME/perl5"
export PERL5LIB="$HOME/perl5/lib/perl5/i686-linux:$HOME/perl5/lib/perl5/i686-linux/auto:$HOME/perl5/lib/perl5/i386-linux:$HOME/perl5/lib/perl5/i686-linux-gnu-thread-multi-64int:$HOME/perl5/lib/perl5/i686-linux-gnu-thread-multi-64int/auto:$HOME/perl5/lib/perl5"
export PERL5LIB=.:./lib:$PERL5LIB
export PATH="$HOME/perl5/bin:$PATH"

# cpanm
export PERL_CPANM_OPT="--local-lib=~/perl5"

# aliases
wiki() {
   dig +short txt $1.wp.dg.cx
}
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias hg='history | grep --color=auto'
alias grep='grep --color=auto'
alias ll='ls -alFh'
alias la='ls -A'
alias l='ls -CF'
alias ls='ls -Fh --color=never'
alias c='clear'
alias minicpanm='cpanm --mirror ~/minicpan --mirror-only'
alias darkpan='cpanm --mirror http://mycompany.foxtons.co.uk/DPAN --mirror-only'
alias free='free -m'
alias install='sudo apt-get install'
alias remove='sudo apt-get remove'
alias autoremove='sudo apt-get autoremove'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'
alias screen='screen -U'
alias db='sqlite3 flashcards.db'
alias tunnel='autossh -v -R 9999:localhost:9999 -N -l eric iijo.org -p 4321'
alias ack='ack --perl --ignore-dir=t -A 5'
alias irc='ssh eric@braga.cuckoo.org -R 7877:localhost:7877'
alias pod='perlfind'
alias GET='lwp-request -m GET '
alias PUT='lwp-request -m PUT '
alias POST='lwp-request -m POST '
alias HEAD='lwp-request -m HEAD '

# local aliases
[ -f $HOME/.aliases ] &&
   . $HOME/.aliases
