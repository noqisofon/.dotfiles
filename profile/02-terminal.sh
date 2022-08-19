# -*- coding: utf-8-unix; -*-
export EDITOR=vim
export VISUAL=vim

export HISTFILESIZE=100000
export LISTMAX=0

export LESS='-R'

if [ -f $HOME/.source-highlight/src-hilite-lesspipe.sh ]; then
    export LESSOPEN="| $HOME/.source-highlight/src-hilite-lesspipe.sh %s"
fi

if [ -z "$TERM" -o "$TERM" = "unknown" ]; then
    TERM=linux
fi

if [ "$TERM" = "linux" ]; then
    export LC_TIME=C
    export LC_MESSAGES=C
fi
