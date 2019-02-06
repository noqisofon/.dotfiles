# -*- mode: shell-script; coding: utf-8-unix; -*-

perl-version() {
    perl -e 'print $^V'
}

ruby-version() {
    ruby -e 'print RUBY_VERSION'
}
