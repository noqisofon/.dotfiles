# -*- coding: utf-8-unix; -*-


pacman-update() {
    if [ type pacman 2> /dev/null ]; then
        echo 'not found pacman' > 2

        return 0
    fi
    
    if [ ! -d $HOME/var/log/pacman/ ]; then
        mkdir -p $HOME/var/log/pacman/
    fi
  
    pacman -Syu --logfile $HOME/var/log/pacman/`date -I`.update.log
}
