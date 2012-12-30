[ -z "$PS1" ] && return            # do nothing unless running interactively

# shell variables
HISTCONTROL=ignoredups:ignorespace # see HISTCONTROL in bash(1)
HISTSIZE=1000                      # see HISTSIZE in bash(1)
HISTFILESIZE=2000                  # see HISTFILESIZE in bash(1)

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
shopt -s histappend                # append to the history file, don't overwrite

source ~/.bash/path.sh
source ~/.bash/env.sh
source ~/.bash/aliases.sh
source ~/.bash/prompt.sh
