#!/bin/bash
#
# Author: Luís de Sousa (luis.de.sousa[@]protonmail.ch)
# Date: 09-08-2016
#
# Reference:
# http://askubuntu.com/questions/798030/how-to-revert-back-to-a-full-featured-totem-release

echo "Installing xviewer"

echo | add-apt-repository ppa:embrosyn/xapps
apt-get update
yes | apt install xviewer

# Associate xviewer with image file types
# Reference:
# http://askubuntu.com/a/607919/177437
if [ -e ~/.local/share/applications/defaults.list ]
then
	sed 's/eog.desktop/xviewer.desktop/' ~/.local/share/applications/defaults.list > ~/.local/share/applications/defaults.list
else
	sed 's/eog.desktop/xviewer.desktop/' /usr/share/applications/defaults.list > ~/.local/share/applications/defaults.list
fi
