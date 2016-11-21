# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Don't put duplicate lines in the history
# Don't save commands which start with a space
export HISTCONTROL=ignoredups:erasedups:ignorespace
export HISTTIMEFORMAT="%Y/%m/%d %R "
export HISTFILESIZE=100000

# Append to the history file, don't overwrite it
shopt -s histappend

PS1='\[\033[01;34m\]\u\[\033[1;31m\]@\[\033[1;32m\]\h\[\033[00;37m\]:\[\033[01;35m\]\w \A \[\033[00m\]$ '


if [[ -f /etc/bash_completion ]]
then
    source /etc/bash_completion
fi

if [[ -r $HOME/.bash_aliases ]]
then
    source $HOME/.bash_aliases
fi

if [[ -x /usr/bin/dircolors ]]
then
	if [[ -r $HOME/.colors ]]
    then
        eval $(dircolors $HOME/.colors)
    else
		echo nonciao
        eval $(dircolors -b)
    fi
fi

export EDITOR='/usr/bin/vim'
export PYTHONSTARTUP=$HOME/.pythonrc

