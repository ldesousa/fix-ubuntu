#!/bin/sh
#
# Author: Luís de Sousa (luis.de.sousa[@]protonmail.ch)
# Date: 01-08-2016
#
# Reference:
# http://askubuntu.com/questions/763846/why-has-avidemux-been-removed-from-ubuntu-16-04s-repository

echo "Installing Avidemux"

echo "" >> /etc/apt/sources.list
echo "# GetDeb" >> /etc/apt/sources.list
echo "deb http://archive.getdeb.net/ubuntu xenial-getdeb apps" >> /etc/apt/sources.list

wget -q -O- http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add -

apt install avidemux2.6-qt
