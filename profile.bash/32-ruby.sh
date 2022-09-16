# -*- coding: utf-8-unix; -*-

ruby-version() {
    local ruby_version=$(ruby -e 'puts RUBY_VERSION')
    local ruby_major_version=$(echo $ruby_version | cut -d. -f1)
    local ruby_minor_version=$(echo $ruby_version | cut -d. -f2)

    echo "${ruby_major_version}.${ruby_minor_version}.0"
}

export GEM_HOME=$HOME/.gem/ruby/$(ruby-version)

export gem_bin_dir=$GEM_HOME/bin
