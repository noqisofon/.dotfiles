# -*- mode: shell-script; coding: utf-8-unix; -*-
#
# via: https://qiita.com/b4b4r07/items/09815eda8ef72e0b472e
#

os-type() {
    uname -s | tr '[:upper:]' '[:lower:]'
}

os-detect() {
    case "$(os-type)" in
         *'linux'*)       PLATFORM='linux'    ;;
        *'darwin'*)       PLATFORM='osx'      ;;
           *'bsd'*)       PLATFORM='bsd'      ;;
         *'mingw'*)       PLATFORM='msys'     ;;
        *'cygwin'*)       PLATFORM='cygwin'   ;;
                 *)       PLATFORM='unknown'  ;;
    esac

    export PLATFORM
}

is-linux() {
    os_detect

    if [ "$PLATFORM" = "linux" ]; then
        return 0
    else
        return 1
    fi
}

is-osx() {
    os_detect

    if [ "$PLATFORM" = "osx" ]; then
        return 0
    else
        return 1
    fi
}

is-windows-nt() {
    os_detect

    if [ "$PLATFORM" = "msys" -o "$PLATFORM" = "cygwin" ]; then
        return 0
    else
        return 1
    fi
}

is-cygwin() {
    os_detect

    if [ "$PLATFORM" = "msys" ]; then
        return 0
    else
        return 1
    fi
}

is-msys() {
    os_detect

    if [ "$PLATFORM" = "msys" ]; then
        return 0
    else
        return 1
    fi
}
