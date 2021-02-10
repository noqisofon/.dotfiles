# -*- coding: utf-8-unix; -*-

if is-windows-nt ; then
    WINDOWS_RAKU_BIN_DIR=/c/rakudo/bin

    if [ -d "$WINDOWS_RAKU_BIN_DIR" ]; then
	export WINDOWS_RAKU_BIN_DIR

	PATH=$PATH:$WINDOWS_RAKU_BIN_DIR
    fi
fi

RAKU_BIN_DIR=/usr/share/perl6/site/bin

if [ -d "$RAKU_BIN_DIR" ]; then
    export RAKU_BIN_DIR

    PATH=$PATH:$RAKU_BIN_DIR
fi
