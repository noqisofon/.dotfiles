# -*- coding: utf-8-unix; -*-

ruby_version=2.7.0

GEM_BIN_DIR=$HOME/.gem/ruby/${ruby_version}/bin

if [ -d "$GEM_BIN_DIR" ]; then
    export GEM_BIN_DIR

    PATH=$PATH:$GEM_BIN_DIR
fi

