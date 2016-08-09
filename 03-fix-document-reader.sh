#!/bin/sh
#
# Author: Luís de Sousa (luis.de.sousa[@]protonmail.ch)
# Date: 01-08-2016

echo "Installing Okular"
yes | apt install okular

# ToDo: set Okular as default - the line below is not working...
# Reference:
# http://askubuntu.com/questions/805573/how-to-set-the-default-document-reader-in-ubuntu-16-04
xdg-mime default okular.desktop application/pdf
