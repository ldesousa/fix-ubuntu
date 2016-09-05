#!/bin/bash
#
# Author: Luís de Sousa (luis.de.sousa[@]protonmail.ch)
# Date: 23-08-2016
#
# Reference:
# http://www.noobslab.com/2015/12/sayonara-try-another-great-audio-player.html

echo "Installing Sayonara"

echo | apt-add-repository ppa:lucioc/sayonara
apt update
apt install sayonara

# Associate Sayonara with audio file types
# Reference:
# http://askubuntu.com/a/607919/177437
if [ -e ~/.local/share/applications/defaults.list ]
then
	sed 's/rhythmbox/sayonara/' ~/.local/share/applications/defaults.list > ~/.local/share/applications/defaults.list
	echo "Already exists"
else
	sed 's/rhythmbox/sayonara/' /usr/share/applications/defaults.list > ~/.local/share/applications/defaults.list
	echo "Creating new"
fi
