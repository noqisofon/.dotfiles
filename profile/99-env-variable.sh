# -*- coding: utf-8-unix; -*-

export GHQ_ROOT=$HOME/opt/src

if is-windows-nt ; then
    source ../bash/setup/keybase.sh
fi

bin_dir=/bin
sbin_dir=/sbin

case $MSYSTEM in
    "MINGW32")
        usr_bin_dir=/mingw32/bin
        usr_local_bin_dir=/mingw32/local/bin
        ;;
    "MINGW64")
        usr_bin_dir=/mingw64/bin
        usr_local_bin_dir=/mingw64/local/bin
        ;;
    "UCRT64")
        usr_bin_dir=/ucrt64/bin
        usr_local_bin_dir=/ucrt64/local/bin
        ;;
    "CLANG32")
        usr_bin_dir=/clang32/bin
        usr_local_bin_dir=/clang32/local/bin
        ;;
    "CLANG64")
        usr_bin_dir=/clang64/bin
        usr_local_bin_dir=/clang64/local/bin
        ;;
    *)
        usr_bin_dir=/usr/bin
        usr_local_bin_dir=/usr/local/bin
        ;;
esac

opt_bin_dir=/opt/bin
home_bin_dir=$HOME/bin
home_local_bin_dir=$HOME/.local/bin

test -d $bin_dir            && export PATH=$bin_dir
test -d $sbin_dir           && export PATH=$PATH:$sbin_dir
test -d $usr_bin_dir        && export PATH=$PATH:$usr_bin_dir
test -d $usr_local_bin_dir  && export PATH=$PATH:$usr_local_bin_dir
test -d $opt_bin_dir        && export PATH=$PATH:$opt_bin_dir

test -d $quicklisp_bin_dir && export PATH=$PATH:$quicklisp_bin_dir
test -d $gem_bin_dir       && export PATH=$PATH:$gem_bin_dir
test -d $scoop_shims_dir   && export PATH=$PATH:$scoop_shims_dir

[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source $SDKMAN_DIR/bin/sdkman-init.sh

test -d $home_bin_dir       && export PATH=$PATH:$home_bin_dir
test -d $home_local_bin_dir && export PATH=$PATH:$home_local_bin_dir
