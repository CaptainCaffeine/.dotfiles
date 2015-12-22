#!/bin/sh

#delete old symbolic links/default dotfiles
rm ~/.bash_aliases
rm ~/.vimrc
rm ~/.Xresources

ln -sv ~/.dotfiles/.bash_aliases ~

#if this is on my laptop, use the alternate dotfiles
if [ "$(hostname)" == "FuGuiZhu" ]; then
    ln -sv ~/.dotfiles/.vimrc_laptop ~/.vimrc
    ln -sv ~/.dotfiles/.Xresources_laptop ~/.Xresources
else
    ln -sv ~/.dotfiles/.vimrc ~
    ln -sv ~/.dotfiles/.Xresources ~
fi

#update X11 database
xrdb ~/.Xresources
