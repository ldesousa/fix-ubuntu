#!/bin/sh
#
# Author: Luís de Sousa (luis.de.sousa[@]protonmail.ch)
# Date: 01-08-2016

echo "Installing usefull tools"

echo | add-apt-repository ppa:diodon-team/stable
apt update
yes | apt install htop git git-gui aptitude unity-tweak-tool diodon indicator-multiload

echo "If Diodon is not recording the clipboard checkout this link:"
echo "https://esite.ch/2014/08/why-does-diodon-not-save-anything-to-the-clipboard-history/"
echo
echo "To set up a shortcut for Diodon follow these instructions:"
echo "https://esite.ch/2015/07/using-custom-shortcuts-of-de-as-diodon-hotkey/"