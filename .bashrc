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
#PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# ssh keychain
[ -f $HOME/.ssh/id_dsa ] &&
[ -f "`which keychain`" ] && keychain id_dsa
[ -f $HOME/.ssh/eric   ] &&
[ -f "`which keychain`" ] && keychain eric
[ -z "$HOSTNAME" ] && HOSTNAME=`name -n`
[ -f $HOME/.keychain/$HOSTNAME-sh ] &&
   . $HOME/.keychain/$HOSTNAME-sh
[ -f $HOME/.keychain/$HOSTNAME-sh-gpg ] &&
   . $HOME/.keychain/$HOSTNAME-sh-gpg

# local::lib
export PERL_LOCAL_LIB_ROOT="/home/eric/perl5";
export PERL_MB_OPT="--install_base $HOME/perl5"
export PERL_MM_OPT="INSTALL_BASE=$HOME/perl5"
export PERL5LIB="$HOME/perl5/lib/perl5/i686-linux:$HOME/perl5/lib/perl5/i686-linux/auto:$HOME/perl5/lib/perl5/i386-linux:$HOME/perl5/lib/perl5/i686-linux-gnu-thread-multi-64int:$HOME/perl5/lib/perl5/i686-linux-gnu-thread-multi-64int/auto:$HOME/perl5/lib/perl5"
export PERL5LIB=.:./lib:$PERL5LIB
export PATH="$HOME/perl5/bin:$PATH"

# cpanm
PERL_CPANM_OPT="--local-lib=~/perl5"

[ -f /etc/bash_completion.d/git ] && 
   . /etc/bash_completion.d/git 

# perldoc tab completion
[ -f $HOME/bin/perldoc-complete ] &&
   complete -C perldoc-complete -o nospace -o default pod

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
alias pod='perldoc'

# local aliases
[ -f $HOME/.aliases ] &&
   . $HOME/.aliases
