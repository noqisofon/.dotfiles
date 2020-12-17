# -*- coding: utf-8-unix; -*-

test -z "$LANG" && export LANG=ja_JP.utf8

export KCODE=u

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

if is-windows-nt; then
    export XDG_CONFIG_HOME=$HOME/.config
    export XDG_DATA_HOME=$HOME/.local/share
    export XDG_CACHE_HOME=$HOME/.cache
fi

if type cygpath >& /dev/null ; then
    if [ -n "$LOCALAPPDATA" ]; then
        export LOCALAPPDATA=`cygpath $LOCALAPPDATA`
    fi
    if [ -n "$APPDATA" ]; then
        export APPDATA=`cygpath $APPDATA`
    fi
fi

if is-windows-nt ; then
    source $HOME/.config/dotfiles/bash/setup/keybase.sh
fi

if [ -z "$SCOOP" ]; then
    export PATH=$PATH:/opt/bin:/usr/share/perl6/site/bin:$HOME/bin:$HOME/.local/bin:$HOME/.roswell/bin
else
    export PATH=$PATH:/opt/bin:/usr/share/perl6/site/bin:$HOME/bin:$HOME/.local/bin:$HOME/.roswell/bin:$SCOOP/shims
fi