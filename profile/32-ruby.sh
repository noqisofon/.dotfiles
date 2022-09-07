# -*- coding: utf-8-unix; -*-

ruby-version() {
    ruby -e 'print RUBY_VERSION'
}

if [ "$MSYSTEM" = 'MSYS' ]; then
    ruby_version=2.7.0
else
    ruby_version=3.0.0
fi

export GEM_HOME=$HOME/.gem/ruby/${ruby_version}

export gem_bin_dir=$GEM_HOME/bin

unset ruby_version
