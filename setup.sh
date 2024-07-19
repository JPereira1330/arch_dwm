#!/bin/bash

# Install
sudo pacman -Syu base-devel git vim xorg-server xorg-xinit libx11 libx11 libxinerama libxft webkit2gtk --noconfirm --needed

# Compiling
cd dwm
sudo make clean install
cd ..

cd st
sudo make clean install
cd ..

cd dmenu
sudo make clean install
cd ..


# Config
echo "exec dwm" >> ~/.xinitrc
echo "startx" >> ~/.bash_profile

# Aditional
sudo pacman -Syu feh fastfetch --needed --noconfirm
