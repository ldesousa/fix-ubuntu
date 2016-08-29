#!/bin/sh
#
# Author: Luís de Sousa (luis.de.sousa[@]protonmail.ch)
# Date: 01-08-2016
#
# Reference:
# http://askubuntu.com/questions/763846/why-has-avidemux-been-removed-from-ubuntu-16-04s-repository

echo "Installing Avidemux"

tee /etc/apt/sources.list <<< ""
tee /etc/apt/sources.list <<< "# GetDeb"
tee /etc/apt/sources.list <<< "deb http://archive.getdeb.net/ubuntu xenial-getdeb apps"

wget -q -O- http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add -

apt get update

yes | apt install avidemux2.6-qt
