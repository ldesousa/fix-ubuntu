#!/bin/sh
#
# Author: Luís de Sousa (luis.de.sousa[@]protonmail.ch)
# Date: 01-08-2016
#
# Reference:
# http://askubuntu.com/questions/800730/dark-gtk-theme-for-ubuntu-16-04-unity

echo "Installing Arc Dark theme."

echo | add-apt-repository ppa:noobslab/themes
apt update
yes | apt install arc-theme

# Automatically set this theme by default
# If it does not work change manually with Unity Tweak
gsettings set org.gnome.desktop.interface gtk-theme "Arc-dark"
