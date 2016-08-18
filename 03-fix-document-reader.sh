#!/bin/sh
#
# Author: Luís de Sousa (luis.de.sousa[@]protonmail.ch)
# Date: 01-08-2016

echo "Installing Okular"
yes | apt install okular

# Associate okular with document file types
# Reference:
# http://askubuntu.com/a/607919/177437
if [ -e ~/.local/share/applications/defaults.list ]
then
	echo "The file exists"
	sed 's/evince/okular/' ~/.local/share/applications/defaults.list > ~/.local/share/applications/defaults.list
else
	echo "The file does not exist"
	sed 's/evince/okular/' /usr/share/applications/defaults.list > ~/.local/share/applications/defaults.list
fi
