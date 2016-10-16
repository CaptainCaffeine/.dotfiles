#!/bin/sh

# Delete old symbolic links/default dotfiles
rm ~/.bashrc
rm ~/.bash_aliases
rm ~/.inputrc
rm ~/.vimrc

rm ~/.config/konsolerc

rm ~/.local/share/konsole/Jellybeans.colorscheme
rm ~/.local/share/konsole/matt.profile

# Link the dotfiles in this repo
ln -sv ~/.dotfiles/.bashrc ~
ln -sv ~/.dotfiles/.bash_aliases ~
ln -sv ~/.dotfiles/.inputrc ~
ln -sv ~/.dotfiles/.vimrc ~

ln -sv ~/.dotfiles/.config/konsolerc ~/.config/

ln -sv ~/.dotfiles/.local/share/konsole/Jellybeans.colorscheme ~/.local/share/konsole/
ln -sv ~/.dotfiles/.local/share/konsole/matt.profile ~/.local/share/konsole/

# Firefox userContent.css can't be linked from the script, as the default directory id is different for each system
