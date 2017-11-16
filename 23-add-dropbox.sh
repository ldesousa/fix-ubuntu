#!/bin/bash
#
# Author: Luís de Sousa (luis.de.sousa[@]protonmail.ch)
# Date: 15-11-2016

echo "#####################################"
echo "#       Installing Dropbox          #"
echo "#####################################"
echo ""

echo | add-apt-repository "deb http://linux.dropbox.com/ubuntu $(lsb_release -sc) main"
apt-get update
yes | apt install dropbox
yes | apt install nemo-dropbox


