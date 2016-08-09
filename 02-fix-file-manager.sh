#!/bin/sh
#
# Author: Luís de Sousa (luis.de.sousa[@]protonmail.ch)
# Date: 01-08-2016
#
# Reference:
# http://www.webupd8.org/2013/10/install-nemo-with-unity-patches-and.html

echo "Installing Nemo file manager"

echo | add-apt-repository ppa:webupd8team/nemo
apt update
yes | apt install nemo nemo-fileroller

yes | apt install nemo-compare nemo-dropbox nemo-media-columns nemo-pastebin  \\
nemo-seahorse nemo-share nemo-emblems nemo-image-converter nemo-audio-tab

# RabbitVCS: this extension has not been released yet
# echo | add-apt-repository ppa:rabbitvcs/ppa
# yes | apt install nemo-rabbitvcs

# Set Nemo as default file manager
# Reference:
# http://www.fandigital.com/2013/01/set-nemo-default-file-manager-ubuntu.html
xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search
gsettings set org.gnome.desktop.background show-desktop-icons false
gsettings set org.nemo.desktop show-desktop-icons true
