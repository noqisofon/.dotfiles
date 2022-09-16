# -*- coding: utf-8-unix; -*-

bindkey -e

autoload -Uz promptinit && promptinit

autoload -U colors && colors

setopt prompt_subst

case ${UID} in
   0)
     # root 用のプロンプトです。
     PROMPT="%B%M%b %~ %# "
     ;;
   *)
     # 通常のプロンプトです。
     PROMPT="%B%n@%m%b %~
%# "
     ;;
 esac

PROMPT2="%_ >%_b"

SPROMPT="'%r' is correct? [n,y,a,e]: "

RPROMPT="%T"

setopt transient_rprompt

autoload -U compinit && compinit

setopt auto_cd

setopt auto_menu

#setopt correct

setopt list_packed

setopt list_types

setopt noautoremoveslash

setopt magic_equal_subst

setopt print_eight_bit

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

if [ -f $HOME/.dir_colors ]; then
    eval `dircolors ~/.dir_colors`
fi

zstyle ':completion:*:default' list-colors ${LS_COLORS}

zstyle ':completion:*:kill:*:processes' list-colors '=(#b) #([%0-9]#)*=0=01;31'

zstyle ' :completion:*:sudo:*' command-path \
       /sbin \
       /bin \
       /usr/sbin \
       /usr/X11R6/bin \
       /usr/local/sbin \
       /usr/local/bin

if [ "$UID" = "0" ]; then
    unset HISTFILE

    SAVEHIST=0
else
    HISTFILE=~/.zsh_history
    HISTSIZE=10000
    SAVEHIST=10000
fi

setopt share_history

setopt share_history

setopt inc_append_history

setopt hist_no_store

setopt auto_pushd

setopt pushd_ignore_dups

setopt hist_ignore_space

setopt hist_ignore_all_dups

setopt hist_ignore_dups

setopt hist_reduce_blanks

setopt complete_aliases
