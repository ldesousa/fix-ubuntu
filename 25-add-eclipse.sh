#!/bin/bash
#
# Author: Luís de Sousa (luis.de.sousa[@]protonmail.ch)
# Date: 15-11-2016

# Reference:
# https://askubuntu.com/questions/26632/how-to-install-eclipse

echo "#####################################"
echo "#    Installing Eclipse Oxygen      #"
echo "#####################################"
echo ""
echo "Before using this script you must manually download the zipped package from:"
echo "https://www.eclipse.org/downloads/eclipse-packages/"
echo ""

if [ $# -eq 0 ]
  then
    echo "Please provide the path to Eclipse package."
	exit
fi

#tar -zxvf $1

#mv eclipse /opt/eclipse.oxygen
#ln -s /opt/eclipse.oxygen/eclipse /usr/local/bin/eclipse45
#cp /opt/eclipse.oxygen/icon.xpm /usr/share/pixmaps/eclipse.xpm

# Create desktop file
echo "[Desktop Entry]" > eclipse.desktop
echo "Name=Eclipse Oxygen" >> eclipse.desktop
echo "Type=Application" >> eclipse.desktop
echo "Exec=env UBUNTU_MENUPROXY=0 eclipse45" >> eclipse.desktop
echo "Terminal=false" >> eclipse.desktop
echo "Icon=eclipse" >> eclipse.desktop
echo "Comment=Integrated Development Environment" >> eclipse.desktop
echo "NoDisplay=false" >> eclipse.desktop
echo "Categories=Development;IDE;" >> eclipse.desktop
echo "Name[en]=Eclipse Oxygen" >> eclipse.desktop

#desktop-file-install eclipse.desktop

# Lauch Eclipse to the background to fix osgi file
echo "Launching Eclipse to the background to fix osgi file."
nohup eclipse45 >>/dev/null 2>>/dev/null &
echo "Going to sleep..."
sleep 20
chmod a+rw -R /opt/eclipse.oxygen/configuration/org.eclipse.osgi
echo "Cleaning up"
rm -Rf eclipse eclipse.desktop
echo "All done!"


