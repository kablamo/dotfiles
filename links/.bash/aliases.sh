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

metacpan-favorites() {
    curl -s  https://metacpan.org/author/KABLAMO | perl -ne 'if (m!class="release".*/release/([^"]+)!) { $_ = $1; s/-/::/g; print $_,$/ }'
}
 
cpanm-metacpan-favorites() {
    metacpan-favorites | cpanm -nv
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
alias irc='ssh eric@braga -R 7877:localhost:7877'
alias tunnel='autossh -v -R 9999:localhost:9999 -N -l eric iijo.org -p 4321'
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""
alias t='/home/eric/code/dotfiles/bin/todo.sh -p -P'
alias p='sudo puppet apply --confdir=/home/eric/.puppet ~/.puppet/manifests/site.pp -v'
alias pw='perl -MCrypt::Diceware -E "say join(\" \", words(4))"'

alias free='free -m'
alias install='sudo apt-get install'
alias remove='sudo apt-get remove'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'
alias search="apt-cache search"

alias minicpanm='cpanm --mirror ~/minicpan --mirror-only'
alias darkpan='cpanm --mirror http://mycompany.co.uk/DPAN --mirror-only'
alias pod='perlfind'
alias perl5lib='perl -E "say join \"\n\", split \":\", \$ENV{PERL5LIB}"'

alias GET='lwp-request -m GET '
alias PUT='lwp-request -m PUT '
alias POST='lwp-request -m POST '
alias HEAD='lwp-request -m HEAD '

alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"

# local aliases
[ -f $HOME/.aliases ] &&
   . $HOME/.aliases
