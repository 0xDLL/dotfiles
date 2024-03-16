#!/bin/bash

# This script install awesome, polybar, NerdFont SpaceMono and other stuff.
# This is made for Linux Mint, but might work with other distros.
# Some configuration is specificly made for Linux Mint in Polybar.

# INSTALL SOME STUFF

sudo apt update
sudo apt install -y awesome awesome-extra picom suckless-tools flameshot mousepad git polybar fonts-font-awesome terminator fonts-opensymbol fonts-powerline p7zip-full

# NERD FONT

 mkdir -p ~/.local/share/fonts 
 cd /dev/shm 
 wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/SpaceMono.zip
 7z x SpaceMono.zip 
 mv *.ttf ~/.local/share/fonts
 fc-cache -f -v
