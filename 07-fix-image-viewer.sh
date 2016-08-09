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
yes | apt install xviewer
