# -*- coding: utf-8-unix; -*-

export GHQ_ROOT=$HOME/opt/src

if is-windows-nt ; then
    source $HOME/.config/dotfiles/bash/setup/keybase.sh
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

[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source $SDKMAN_DIR/bin/sdkman-init.sh

all_executable_paths=($bin_dir
                      $sbin_dir
                      $usr_bin_dir
                      $usr_local_bin_dir
                      $opt_bin_dir
                      $quicklisp_bin_dir
                      $gem_bin_dir
                      $scoop_shims_dir
                      /c/tools/chicken/bin
                      $JAVA_HOME/bin
                      $GRADLE_HOME/bin
                      $GRAILS_HOME/bin
                      $GROOVY_HOME/bin
                      $GAIDEN_HOME/bin
                      $FLINK_HOME/bin
                      $KOTLIN_HOME/bin
                      $KSCRIPT_HOME/bin
                      $MAVEN_HOME/bin
                      $MICRONAUT_HOME/bin
                      $SPRINGBOOT_HOME/bin
                      $home_bin_dir
                      $home_local_bin_dir)

executable_paths=()
for executable_path in "${all_executable_paths[@]}"; do
    [ -d "$executable_path" ] && executable_paths+=("$executable_path")
done
unset executable_path

export PATH="$(IFS=:; echo "${executable_paths[*]}")"
