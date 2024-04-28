#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# set our prompt
[ -f $HOME/.bash_prompt ] && source $HOME/.bash_prompt

# load aliases
[ -f $HOME/.bash_aliases ] && source $HOME/.bash_aliases

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
[[ $DISPLAY ]] && shopt -s checkwinsize

# history settings
HISTCONTROL=ignoreboth		# no duplicate lines in the history
shopt -s histappend			# append, dont overwrite history
HISTSIZE= HISFILESIZE= 		# infinite history
HIST_PATH="$XDG_DATA_HOME/bash_history"
[ -f "$HIST_PATH" ] || touch "$HIST_PATH"
export HISTFILE="$HIST_PATH"

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# vi mode in bash
set -o vi

# enable color support
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Make aliases work for sudo
alias sudo='sudo '

# disable freezing by ctr+s
stty -ixon

# change directory by just typing the path without 'cd'
shopt -s autocd

case ${TERM} in
  Eterm*|alacritty*|aterm*|foot*|gnome*|konsole*|kterm*|putty*|rxvt*|tmux*|xterm*)
    PROMPT_COMMAND+=('printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"')

    ;;
  screen*)
    PROMPT_COMMAND+=('printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"')
    ;;
esac


if [[ -r /usr/share/bash-completion/bash_completion ]]; then
  . /usr/share/bash-completion/bash_completion
fi

export PATH="$PATH:$HOME/.local/bin"