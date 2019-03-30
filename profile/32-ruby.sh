# -*- coding: utf-8-unix; -*-

GEM_BIN_DIR=$HOME/.gem/ruby/2.6.0/bin

if [ -d "$GEM_BIN_DIR" ]; then
    export GEM_BIN_DIR

    PATH=$PATH:$GEM_BIN_DIR
fi

