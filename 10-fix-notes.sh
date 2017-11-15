#!/bin/bash
#
# Author: Luís de Sousa (luis.de.sousa[@]protonmail.ch)
# Date: 03-11-2017

echo "Installing notes management software."
echo "Since the Ubuntu One service was brought offline notes must be synchronised 
with a service like ownCloud. If you wish to use an alternative service or 
notes location, please edit the script and modify the path in the last line."

yes | apt install owncloud-client
yes | apt install tomboy

echo 'TOMBOY_PATH="/home/'$USER'/owncloud/tomboy"' >> /etc/environment
