#!/bin/bash

# This script install awesome, polybar, NerdFont SpaceMono and other stuff.
# This is made for Linux Mint, but might work with other distros.
# Some configuration is specificly made for Linux Mint in Polybar.

# NERD FONT

 mkdir -p ~/.local/share/fonts 
 cd /dev/shm 
 wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/SpaceMono.zip
 7z x SpaceMono.zip 
 mv *.ttf ~/.local/share/fonts
 fc-cache -f -v

# STUFF FOR VSCODIUM

wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg \
    | gpg --dearmor \
    | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg

    echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' \
    | sudo tee /etc/apt/sources.list.d/vscodium.list

# INSTALL SOME STUFF

sudo apt update
sudo apt install -y awesome awesome-extra picom codium pcmanfm suckless-tools flameshot mousepad git polybar fonts-font-awesome terminator fonts-opensymbol fonts-powerline p7zip-full

# NERD FONT IN VSCODIUM

mkdir ~/.config/VSCodium/User
cat <<- EOF > ~/.config/VSCodium/User/settings.json
    
{
    "editor.fontFamily": "'Droid Sans Mono', 'monospace', monospace, SpaceMono Nerd Font"
}
EOF

# SETTINGS FOR FLAMESHOT

mkdir ~/.config/flameshot
cat <<- EOF > ~/.config/flameshot/flameshot.ini

[General]
buttons=@Variant(\0\0\0\x7f\0\0\0\vQList<int>\0\0\0\0\x15\0\0\0\0\0\0\0\x1\0\0\0\x2\0\0\0\x3\0\0\0\x4\0\0\0\x5\0\0\0\x6\0\0\0\x12\0\0\0\xf\0\0\0\x16\0\0\0\x13\0\0\0\a\0\0\0\b\0\0\0\t\0\0\0\x10\0\0\0\n\0\0\0\v\0\0\0\x17\0\0\0\xe\0\0\0\f\0\0\0\x11)
contrastOpacity=188
savePath=~/Desktop/
startupLaunch=false

[Shortcuts]
TYPE_COPY=Return

EOF
