# -*- coding: utf-8-unix; -*-

test -n "$MSYSTEM" && export MSYS=winsymlinks

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

if type cygpath >& /dev/null ; then
    if [ -n "$SCOOP" ]; then
        scoop_shims_dir=`cygpath $SCOOP`/shims
    fi
fi
