#!/bin/bash
#
# Author: Luís de Sousa (luis.de.sousa[@]protonmail.ch)
# Date: 03-11-2017

echo "Installing notes management software."
echo "Since the Ubuntu One service was brought offline notes must be synchronised 
with a service like ownCloud. If you wish to use an alternative service please 
install it manually before using this script."

if [ $# -eq 0 ]
  then
    echo
    echo "ERROR: Please provide the path to the desired Tomboy notes folder, e.g.:"
    echo "sudo sh ./10-fix-notes.sh /home/user/ownCloud/tomboy"
	exit
fi

yes | apt install owncloud-client
yes | apt install tomboy

echo 'TOMBOY_PATH="'$1'"' >> /etc/environment
