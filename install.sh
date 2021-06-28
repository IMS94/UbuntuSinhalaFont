#!/bin/bash

# Install Noto Fonts
sudo apt install -y fonts-noto

# Download font config
if [ ! -f 65-nonlatin.conf ]; then
    echo "Downloading font config"
    wget https://raw.githubusercontent.com/IMS94/UbuntuSinhalaFont/master/65-nonlatin.conf
fi

# Move existing non-latin config
if [ ! -f /etc/fonts/conf.avail/65-nonlatin.conf.bak ]; then
    echo "Backing up existing configuration"
    sudo mv /etc/fonts/conf.avail/65-nonlatin.conf /etc/fonts/conf.avail/65-nonlatin.conf.bak
fi

# Move downloaded config to font configs
echo "Updating font config"
sudo mv 65-nonlatin.conf /etc/fonts/conf.avail/65-nonlatin.conf

# Reload font cache
echo "Reloading font cache"
fc-cache -r

echo "All Done! Please restart your machine for updated fonts to take effect"