# -*- coding: utf-8-unix; -*-

exit_success=0
exit_failure=1

kernel-type() {
    uname -s | tr '[:upper:]' '[:lower:]'
}

operating-system() {
    uname -o | tr '[:upper:]' '[:lower:]'
}

ensure-platform() {
    case "$(kernel-type)" in
         *'linux'*)       PLATFORM='linux'    ;;
        *'darwin'*)       PLATFORM='osx'      ;;
           *'bsd'*)       PLATFORM='bsd'      ;;
          *'msys'*)       PLATFORM='msys'     ;;
        *'cygwin'*)       PLATFORM='cygwin'   ;;
                 *)       PLATFORM='unknown'  ;;
    esac

    export PLATFORM
}

is-linux() {
    ensure-platform

    if [ "$PLATFORM" = "linux" ]; then
        return $exit_success
    else
        return $exit_failure
    fi
}

is-osx() {
    ensure-platform

    if [ "$PLATFORM" = "osx" ]; then
        return $exit_success
    else
        return $exit_failure
    fi
}

is-windows-nt() {
    ensure-platform

    if [ -n "$OS" -o "$PLATFORM" = "msys" -o "$PLATFORM" = "cygwin" ]; then
        return $exit_success
    else
        return $exit_failure
    fi
}

is-cygwin() {
    ensure-platform

    if [ "$PLATFORM" = "cygwin" ]; then
        return $exit_success
    else
        return $exit_failure
    fi
}

is-msys() {
    ensure-platform

    if [ "$PLATFORM" = "msys" ]; then
        return $exit_success
    else
        return $exit_failure
    fi
}

unset exit_success
unset exit_failure
