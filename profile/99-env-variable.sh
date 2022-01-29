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

export GHQ_ROOT=$HOME/opt/src

if [ -d /opt/bin ]; then
    PATH=$PATH:/opt/bin
fi

if [ -d $HOME/bin ]; then
    PATH=$PATH:$HOME/bin
fi

if [ -d $HOME/.local/bin ]; then
    PATH=$PATH:$HOME/.local/bin
fi

if [ -d $HOME/.roswell/bin ]; then
    PATH=$PATH:$HOME/.roswell/bin
fi

if [ -d $GEM_BIN_DIR ]; then
    PATH=$PATH:$GEM_BIN_DIR
fi

scoop_shims_dir=`cygpath $SCOOP`/shims
if [ -d "$scoop_shims_dir" ]; then
    PATH=$PATH:$scoop_shims_dir
fi

export PATH
