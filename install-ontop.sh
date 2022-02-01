#!/bin/sh

if [[ whoami != "root" ]]
then
    echo "You must be root"
    exit 1
fi

pacman -S sddm
pacman -S plasma-meta
pacman -S firefox
pacman -S alacritty

systemctl enable sddm

# Install yay
git clone https://aur.archlinux.org/yay-git.git
cd yay-git/

