wiki() {
   dig +short txt $1.wp.dg.cx
}

alias hg='history | grep --color=auto'
alias grep='grep --color=auto'
alias ll='ls -alFh'
alias la='ls -A'
alias l='ls -CF'
alias ls='ls -Fh --color=never'
alias c='clear'
alias ..='cd ..'
alias ...='cd ../..'
alias -- -='cd -'

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias ack='ack --perl --ignore-dir=t -A 5'
alias irc='ssh eric@braga.cuckoo.org -R 7877:localhost:7877'
alias tunnel='autossh -v -R 9999:localhost:9999 -N -l eric iijo.org -p 4321'
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""
alias t='/home/eric/code/dotfiles/bin/todo.sh -p -P'

alias free='free -m'
alias install='sudo apt-get install'
alias remove='sudo apt-get remove'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'
alias search="apt-cache search"

alias minicpanm='cpanm --mirror ~/minicpan --mirror-only'
alias darkpan='cpanm --mirror http://mycompany.foxtons.co.uk/DPAN --mirror-only'
alias pod='perlfind'

alias GET='lwp-request -m GET '
alias PUT='lwp-request -m PUT '
alias POST='lwp-request -m POST '
alias HEAD='lwp-request -m HEAD '

alias g='git'
alias gu='git pull'
alias gll='git ll'
alias gls='git ls'
alias glo='git lo'
alias gp='git push origin HEAD'
alias gd='git difftool'
alias gc='git commit'
alias gca='git commit -a'
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"

# local aliases
[ -f $HOME/.aliases ] &&
   . $HOME/.aliases
