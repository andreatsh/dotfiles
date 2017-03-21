# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Don't put duplicate lines in the history
# Don't save commands which start with a space
HISTCONTROL=ignoredups:erasedups:ignorespace
HISTTIMEFORMAT="%Y/%m/%d %R "
HISTSIZE=10000
HISTFILESIZE=10000

shopt -s histappend    # Append to the history file, don't overwrite it
shopt -s histreedit    # Re-edit a failed history substitution
shopt -s histverify    # Verify an history substitution before executing


BOLD="$(tput bold)"
RESET="$(tput sgr0)"

RED="$(tput setaf 1)"
GREEN="$(tput setaf 2)"
YELLOW="$(tput setaf 3)"
BLUE="$(tput setaf 4)"
MAGENTA="$(tput setaf 5)"
CYAN="$(tput setaf 6)"
WHITE="$(tput setaf 7)"


PS1='\[$BOLD\]\[$BLUE\]\u\[$RED\]@\[$GREEN\]\h:\[$MAGENTA\]\w'

if [[ -n "${SSH_CONNECTION:-}" ]]
then
    PS1="$PS1"'\[$RESET\]\[$CYAN\] [ssh]'
fi

if ! type -t __git_ps1 &>/dev/null && [ -e /usr/share/git-core/contrib/completion/git-prompt.sh ]
then
    source /usr/share/git-core/contrib/completion/git-prompt.sh
fi

if type -t __git_ps1 &>/dev/null  
then  
    PS1="$PS1"'\[$RESET\]\[$CYAN\]$(__git_ps1 " [%s]")'
    export GIT_PS1_SHOWDIRTYSTATE=1
    export GIT_PS1_SHOWUNTRACKEDFILES=1
fi

# End prompt
PS1="$PS1"' \[$RESET\]$ '

if [[ -f /etc/bash_completion ]]
then
    source /etc/bash_completion
fi

if [[ -r "$HOME/.bash_aliases" ]]
then
    source "$HOME/.bash_aliases"
fi

if [[ -r "$HOME/.bash_functions" ]] 
then
    source "$HOME/.bash_functions"
    PROMPT_COMMAND=_bash_history_sync
fi

if [[ -x /usr/bin/dircolors ]]
then
	if [[ -r "$HOME/.colors" ]]
    then
        eval "$(dircolors "$HOME/.colors")"
    else
        eval "$(dircolors -b)"
    fi
fi

export EDITOR="/usr/bin/vim"
export PYTHONSTARTUP="$HOME/.pythonrc"

