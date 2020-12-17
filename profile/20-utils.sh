# -*- coding: utf-8-unix; -*-


pacman-update() {
    local log_dir=$HOME/var/log/pacman
    if [ type pacman 2> /dev/null ]; then
        echo 'not found pacman' 1>&2

        return 0
    fi
    
    if [ ! -d "$log_dir" ]; then
        mkdir -p $log_dir
    fi
  
    pacman -Syu --noconfirm --logfile $log_dir/`date -I`.update.log
}
