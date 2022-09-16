# -*- coding: utf-8-unix; -*-

when_color=auto
tab_size=0

if ! type vim > /dev/null 2>&1; then
    alias vim=vi
fi

if [ -z "$LS_OPTIONS" ]; then
    alias ls="ls -N --color=$when_color --tabsize $tab_size -p"
else
    export LS_OPTIONS="${LS_OPTIONS} -p"
fi

alias grep="grep --color=$when_color"

unset when_color
unset tab_size
