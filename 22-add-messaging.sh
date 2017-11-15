#!/bin/bash
#
# Author: Luís de Sousa (luis.de.sousa[@]protonmail.ch)
# Date: 15-11-2016

# Reference:
# https://www.linuxbabe.com/ubuntu/install-telegram-desktop-ubuntu-1610-ppa
echo "#####################################"
echo "#        Installing Telegram        #"
echo "#####################################"
echo ""

echo | add-apt-repository ppa:atareao/telegram
apt update
yes | apt install telegram


# Reference:
# http://www.ubuntubuzz.com/2016/12/how-to-install-gnu-ring-in-ubuntu-free-replacement-for-skype.html
echo ""
echo "#####################################"
echo "#          Installing Ring          #"
echo "#####################################"
echo ""

echo 'deb https://dl.ring.cx/ring-nightly/ubuntu_16.04/ ring main' | tee /etc/apt/sources.list.d/ring-nightly-man.list
echo | apt-key adv --keyserver pgp.mit.edu --recv-keys A295D773307D25A33AE72F2F64CD5FA175348F84
echo | add-apt-repository universe 
apt-get update 
yes | apt install ring

# Reference:
# https://askubuntu.com/questions/775087/how-to-install-skype-in-ubuntu-16-04
echo ""
echo "#####################################"
echo "#         Installing Skype          #"
echo "#####################################"
echo ""

wget https://go.skype.com/skypeforlinux-64.deb
dpkg -i skypeforlinux-64.deb
rm skypeforlinux-64.deb



