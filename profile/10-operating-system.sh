# -*- mode: shell-script; coding: utf-8-unix; -*-
#
# via: https://qiita.com/b4b4r07/items/09815eda8ef72e0b472e
#

kernel-type() {
    uname -s | tr '[:upper:]' '[:lower:]'
}

operationg-system() {
    uname -o | tr '[:upper:]' '[:lower:]'
}

ensure-platform() {
    case "$(kernel-type)" in
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
    ensure-platform

    if [ "$PLATFORM" = "linux" ]; then
        return 0
    else
        return 1
    fi
}

is-osx() {
    ensure-platform

    if [ "$PLATFORM" = "osx" ]; then
        return 0
    else
        return 1
    fi
}

is-windows-nt() {
    ensure-platform

    if [ "$PLATFORM" = "msys" -o "$PLATFORM" = "cygwin" ]; then
        return 0
    else
        return 1
    fi
}

is-cygwin() {
    ensure-platform

    if [ "$PLATFORM" = "cygwin" ]; then
        return 0
    else
        return 1
    fi
}

is-msys() {
    ensure-platform

    if [ "$PLATFORM" = "msys" ]; then
        return 0
    else
        return 1
    fi
}
