#!/bin/bash
#
# Author: Luís de Sousa (luis.de.sousa[@]protonmail.ch)
# Date: 15-11-2016
#
# Reference:
# https://help.ubuntu.com/community/Spotify

echo "Installing Spotify"

echo | apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886

# Add new key
echo | apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EFDC8610341D9410 

echo deb http://repository.spotify.com stable non-free | tee /etc/apt/sources.list.d/spotify.list 
apt update 
yes | apt install spotify-client
