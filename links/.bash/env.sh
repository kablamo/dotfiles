export EDITOR=/usr/bin/vim
export TERM='xterm-256color'

# less
export LESS="-MSiRXF"
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# TODO: delete this
export PAGER="/usr/bin/less"

# https://github.com/rupa/z
. ~/bin/z.sh

# https://github.com/ap/perldoc-complete
complete -C perldoc-complete -o nospace -o default perldoc

# all my envs! plenv, rbenv, pyenv, ndenv, etc
[ -x $HOME/.anyenv ] && eval "$(anyenv init -)"

# make it easier to Perl
export PERL5LIB=./lib:./local/lib/perl5:$PERL5LIB

# https://github.com/junegunn/fzf
# command line fuzzy finder written in go
if [[ ! "$PATH" == *$HOME/.fzf/bin* ]]; then
  export PATH="$PATH:$HOME/.fzf/bin"
fi
if [[ ! "$MANPATH" == *$HOME/.fzf/man* && -d "$HOME/.fzf/man" ]]; then
  export MANPATH="$MANPATH:$HOME/.fzf/man"
fi
[[ $- == *i* ]] && source "$HOME/.fzf/shell/completion.bash" 2> /dev/null
source "$HOME/.fzf/shell/key-bindings.bash"
export FZF_DEFAULT_OPTS="--color=dark --history-size=10000"

