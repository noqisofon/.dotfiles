# -*- coding: utf-8-unix; -*-

for a_file in $HOME/.config/dotfiles/profile/[0-9]*.sh
do
    source "$a_file"
done
unset a_file
