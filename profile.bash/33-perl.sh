# -*- coding: utf-8-unix; -*-

perl-version() {
    local perl_version=$(perl -e 'print $^V' | sed s/v//)
    local perl_major_version=$(echo $perl_version | cut -d. -f1)
    local perl_minor_version=$(echo $perl_version | cut -d. -f2)

    echo "${perl_major_version}.${perl_minor_version}"
}

export PERL5LIB=$HOME/.perl5/lib/$(perl-version)

export core_perl_dir=$MSYSTEM_PREFIX/bin/core_perl

export site_perl_dir=MSYSTEM_PREFIX/bin/site_perl

export vendor_perl_dir=/usr/bin/vendor_perl
