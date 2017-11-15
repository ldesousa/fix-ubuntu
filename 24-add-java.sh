#!/bin/bash
#
# Author: Luís de Sousa (luis.de.sousa[@]protonmail.ch)
# Date: 15-11-2016

# Reference:
# http://www.webupd8.org/2012/09/install-oracle-java-8-in-ubuntu-via-ppa.html
echo "#####################################"
echo "#         Installing Java 8         #"
echo "#####################################"
echo ""
echo "Note: Java 9 has been released as stable, but some programmes do not support it yet."
echo ""

echo | add-apt-repository ppa:webupd8team/java
apt update
echo ""
echo "Ready to install. Now run manually the following command:"
echo "sudo apt install oracle-java8-installer"
