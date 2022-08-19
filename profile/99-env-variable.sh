# -*- coding: utf-8-unix; -*-
if is-windows-nt ; then
    source $HOME/.config/dotfiles/bash/setup/keybase.sh
fi

export GHQ_ROOT=$HOME/opt/src

if [ -d /opt/bin ]; then
    export PATH=$PATH:/opt/bin
fi

if [ -d $HOME/bin ]; then
    export PATH=$PATH:$HOME/bin
fi

if [ -d $HOME/.local/bin ]; then
    export PATH=$PATH:$HOME/.local/bin
fi

if [ -d $HOME/.roswell/lisp/quicklisp/bin ]; then
    export PATH=$PATH:$HOME/.roswell/lisp/quicklisp/bin
fi

if [ -d $GEM_BIN_DIR ]; then
    export PATH=$PATH:$GEM_BIN_DIR
fi

scoop_shims_dir=`cygpath $SCOOP`/shims
if [ -d "$scoop_shims_dir" ]; then
    export PATH=$PATH:$scoop_shims_dir
fi
