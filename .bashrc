#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Append to history file, don't overwrite
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=4096
HISTFILESIZE=4096

export HISTCONTROL=ignoredups

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

alias ls='ls --color=auto'
PS1='\[\033[0;44;1;44m\]\u@\h\[\033[00m\]:\w\$ '

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export CC=/usr/bin/clang
export CXX=/usr/bin/clang++
