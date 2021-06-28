#!/bin/bash

# Install Noto Fonts
sudo apt install fonts-noto

# Move existing non-latin config
sudo mv /etc/fonts/conf.avail/65-nonlatin.conf /etc/fonts/conf.avail/65-nonlatin.conf.bak 

