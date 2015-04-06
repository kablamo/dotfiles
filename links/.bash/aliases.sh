wiki() {
    dig +short txt $1.wp.dg.cx
}

say() { 
    tl=$1
    shift 
    if [ "$1" = "-" ] ; then
        read text
        echo $text
    else
        text=$*
    fi
    text=$(echo $text | sed 's#\ #\+#g')
    mplayer -user-agent Mozilla "http://translate.google.com/translate_tts?tl=$tl&ie=UTF-8&q=$text" > /dev/null 2>&1 
}

translate() {
    sl=$1
    tl=$2
    shift
    shift
    text=$(echo $* | sed 's#\ #\+#g')
    len=`expr length "$text"`
    if [ -z "$text" ] ; then
        echo "Try again small friend"
        exit 4
    elif [ "$len" -gt "100" ] ; then
        echo "Cannot translate more than 100 characters at once ($len)"
        exit 2
    fi
    wget -U "Mozilla/5.0" -qO - "http://translate.google.com/translate_a/t?client=t&text=$text&sl=$sl&tl=$tl" | sed 's/\[\[\[\"//' | cut -d \" -f 1;
}

tsay() {
    translate $* | say $2 -
}

mem() {
    memfree=$( grep '^MemFree:' /proc/meminfo | awk '{ mem=($2)/(1024) ; printf "%0.0f", mem }' )
    buffers=$( grep '^Buffers:' /proc/meminfo | awk '{ mem=($2)/(1024) ; printf "%0.0f", mem }' )
    cached=$(  grep '^Cached:'  /proc/meminfo | awk '{ mem=($2)/(1024) ; printf "%0.0f", mem }' )
    free=$( echo $memfree+$buffers+$cached | bc -l )

    total=$( grep '^MemTotal:' /proc/meminfo | awk '{ mem=($2)/(1024) ; printf "%0.0f", mem }' )
    used=$( echo $total-$free | bc -l )
    pct=$( echo 100*$used/$total | bc -l )

    printf "%5.f MB used (%.0f%%)\n%5.f MB total\n" $used $pct $total
}

metacpan-favorites() {
    curl -s  https://metacpan.org/author/KABLAMO | perl -ne 'if (m!class="release".*/release/([^"]+)!) { $_ = $1; s/-/::/g; print $_,$/ }'
}
 
cpanm-metacpan-favorites() {
    metacpan-favorites | cpanm -nv
}

vman() {
    vim -c "SuperMan $*"

    if [ "$?" != "0" ]; then
        echo "No manual entry for $*"
    fi
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
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias -- -='cd -'
alias cdd='cd ~/.dotfiles'
alias cdp='cd ~/.puppet'
alias cp='/bin/cp -v' 
alias mv='/bin/mv -v' 
alias rm='/bin/rm -v' 
alias ln='/bin/ln -v' 

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias irssi='TERM="screen-256color" irssi'
alias tunnel='autossh -v -R 9999:localhost:9999 -N -l eric iijo.org -p 4321'
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""
alias t="$HOME/.dotfiles/bin/todo.sh -p -P"
alias tt="$HOME/.anyenv/envs/rbenv/shims/timetrap"
#alias p='sudo puppet apply --confdir=$HOME/.puppet ~/.puppet/manifests/site.pp -v'
alias p="watch -n 1 'ps awwwuxf | grep eric | grep -v awwwuxf'"
alias pw='genpass --minlength 15 --maxlength 15'
alias free='free -m'
alias findly='find . -name '

alias install='sudo apt-get install'
alias remove='sudo apt-get remove'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'
alias distupgrade='sudo apt-get dist-upgrade'
alias search="apt-cache search"
alias show="apt-cache show"

alias minicpanm='cpanm --mirror ~/minicpan --mirror-only'
alias darkpan='cpanm --mirror http://mycompany.co.uk/DPAN --mirror-only'
alias pod='perlfind'
alias perl5lib='perl -E "say join \"\n\", split \":\", \$ENV{PERL5LIB}"'
alias static="plackup -e 'use Plack::Builder; builder { enable 'Static', path => qr{.*}, root => \".\" }'"

alias GET='lwp-request -m GET '
alias PUT='lwp-request -m PUT '
alias POST='lwp-request -m POST '
alias HEAD='lwp-request -m HEAD '

alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias gcd='cd "$(git rev-parse --show-toplevel)"'
alias mysql2csv='sed '\''s/\t/","/g;s/^/"/;s/$/"/;s/\n//g'\'''

alias reload="exec bash -l"

alias tree="tree -I local"
alias env="env | sort"


# TODO remove this
# local aliases
[ -f $HOME/.aliases ] &&
   . $HOME/.aliases

# local bashrc
[ -f $HOME/.bashrc.local ] &&
   . $HOME/.bashrc.local

# vim: set ft=bash
