# ~/.bash_functions

_bash_history_sync() {
    builtin history -a
    builtin history -c
    builtin history -r
}

history() {
    _bash_history_sync
    builtin history "$@"
}

man() {
    env MANWIDTH=95 \
    LESS_TERMCAP_mb="$(tput bold; tput setaf 1)" \
    LESS_TERMCAP_md="$(tput bold; tput setaf 32)" \
    LESS_TERMCAP_me="$(tput sgr0)" \
    LESS_TERMCAP_se="$(tput sgr0)" \
    LESS_TERMCAP_so="$(tput bold; tput setaf 220)" \
    LESS_TERMCAP_ue="$(tput sgr0)" \
    LESS_TERMCAP_us="$(tput smul; tput bold; tput setaf 37)" \
    man "$@"
}

function swap() {
    local TMPFILE="swaptemp.$$"

    [ "$#" -ne 2 ] && echo "swap: 2 arguments needed" && return 1
    [ ! -e "$1" ]  && echo "swap: $1 does not exist"  && return 1
    [ ! -e "$2" ]  && echo "swap: $2 does not exist"  && return 1

    mv "$1" "$TMPFILE"
    mv "$2" "$1"
    mv "$TMPFILE" "$2"
}

