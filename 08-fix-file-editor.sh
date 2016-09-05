#!/bin/bash
#
# Author: Luís de Sousa (luis.de.sousa[@]protonmail.ch)
# Date: 10-08-2016
#

echo "Installing GEdit plugins"

yes | apt install gedit-developer-plugins gedit-plugins gedit-source-code-browser-plugin rabbitvcs-gedit

# Extra: LaTeX
# This installs texlive, takes about one hour.
# yes | apt install gedit-latex-plugin 

echo "To activate these plugins go to: Edit > Preferences > Plugins"
