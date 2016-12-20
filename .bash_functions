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

