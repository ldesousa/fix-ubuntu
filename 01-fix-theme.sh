#!/bin/sh
#
# Author: Luís de Sousa (luis.de.sousa[@]protonmail.ch)
# Date: 01-08-2016
#
# Reference:
# http://askubuntu.com/questions/800730/dark-gtk-theme-for-ubuntu-16-04-unity

echo "Installing Arc Dark theme."

add-apt-repository ppa:noobslab/themes
apt update
apt install arc-theme

# ToDo: automatically set this theme by default
