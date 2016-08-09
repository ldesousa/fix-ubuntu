#!/bin/sh
#
# Author: Luís de Sousa (luis.de.sousa[@]protonmail.ch)
# Date: 01-08-2016

apt-add-repository ppa:freyja-dev/unity-tweak-tool-daily
apt update
yes | apt install htop git aptitude unity-tweak-tool
