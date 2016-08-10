#!/bin/sh
#
# Author: Luís de Sousa (luis.de.sousa[@]protonmail.ch)
# Date: 09-08-2016
#
# Reference:
# http://askubuntu.com/questions/798030/how-to-revert-back-to-a-full-featured-totem-release

echo "Installing xplayer"

echo | add-apt-repository ppa:embrosyn/xapps
apt-get update
yes | apt install xplayer

# Associate xplayer with video file types
# Reference:
# http://askubuntu.com/a/607919/177437
if [ -e ~/.local/share/applications/defaults.list ]
then
	sed 's/org.gnome.Totem/xplayer/' ~/.local/share/applications/defaults.list > ~/.local/share/applications/defaults.list
else
	sed 's/org.gnome.Totem/xplayer/' /usr/share/applications/defaults.list > ~/.local/share/applications/defaults.list
fi




