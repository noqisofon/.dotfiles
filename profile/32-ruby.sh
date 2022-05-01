# -*- coding: utf-8-unix; -*-

if [ "$MSYSTEM" = 'MSYS' ]; then
    ruby_version=2.7.0
else
    ruby_version=3.0.0
fi

export GEM_HOME=$HOME/.gem/ruby/${ruby_version}

GEM_BIN_DIR=$GEM_HOME/bin

if [ -d "$GEM_BIN_DIR" ]; then
    export GEM_BIN_DIR
fi

unset ruby_version
