Fix Ubuntu
==========

A set of shell scripts automating a number of tasks required for a fully
functional desktop user interface with Ubuntu 16.04.

Copyright
--------------------------------------------------------------------------------

Copyright 2016 Luís Moreira de Sousa. All rights reserved.
Any use of these documents constitutes full acceptance of all terms of the
documents licence.

Reasoning
---------

Since the 12.04 release Ubuntu has provided what is these days one of the best 
desktop user interfaces ever created: [Unity](http://unity.ubuntu.com/). Even 
if not preferred by everyone, Unity boasts a number of features that far beyond 
improving the visual quality of the interface, greatly increase productivity.

However, in subsequent releases the core applications shipped with Ubuntu (e.g.
file browser, document reader, media player, file editor) have been greatly
eroded, with a large number of features consistently removed. When Ubuntu 16.04
was released most of these applications are practically unusable.

This set of scripts automates a number of tasks that became mandatory after a
fresh Ubuntu 16.04 install. It sets up a number of applications that retain the
full features expected in a desktop computer.

These scripts do not remove any software, all applications originally shipped
with Ubuntu 16.04 remain in the system.

00-fix-all.sh
-------------

Run all the fixing scripts in one go.

01-fix-theme.sh
---------------

Ubuntu stopped shipping with a dark theme in 2011. Since then users mindful of
eye fatigue or suffering with colour-blindness are forced to source their own 
theme.

This script install the [Arc Dark theme](https://github.com/horst3180/Arc-theme); 
it presents an appeasing and tranquillising set of colours while integrating 
perfectly with Unity.

02-fix-file-manager.sh
----------------------

Ubuntu ships with Nautilus, a file browser that lost a great deal of
functionality and graphical agility some years ago. This script installs 
[Nemo](https://github.com/linuxmint/nemo), a fork of the last fully functional 
Nautilus release (3.8) that has itself been developed further.

03-fix-document-reader.sh
-------------------------

Ubuntu ships with a minimal document reader, not allowing much beyond opening
documents and zooming in and out. This scripts installs 
[Okular](https://okular.kde.org/), a full featured document reader providing 
tools to annotate and comment on PDF documents. It also has a wide variety of 
accessibility options.

04-tooling.sh
-------------

Installs a number of useful tools that are not present in the stock Ubuntu 
image: 

 - [htop](http://hisham.hm/htop/)
 - [git](https://git-scm.com/) (including its GUI)
 - [aptitude](https://wiki.debian.org/Aptitude) 
 - [Unity Tweak Tool](https://launchpad.net/unity-tweak-tool)
 - [ClipIt](https://sourceforge.net/projects/gtkclipit/)
 - [System Load Indicator](https://launchpad.net/indicator-multiload)

05-fix-video-editor.sh
----------------------

Ubuntu 16.04 no longer ships with a video editor. This script install 
[Avidemux](http://www.avidemux.org/), which had been the default video editor 
heretofore.

06-fix-video-player.sh
----------------------

Totem has been the default video player on Ubuntu since its early days. 
Unfortunately important functionality was removed between Ubuntu 14.04 and 
16.04. This scripts installs [xPlayer](https://github.com/linuxmint/xplayer) a 
Totem fork preserving all its functionalities.

07-fix-image-viewer.sh
----------------------

Like many other default applications, the default image viewer shipped with 
Ubuntu 16.04 is now lacking a number of controls and functions. With this 
script a fork called [xViewer](https://github.com/linuxmint/xviewer) is 
installed that restores lost functionalities.

08-fix-file-editor.sh
---------------------

[GEdit](https://wiki.gnome.org/Apps/Gedit) is the default graphical file editor 
in Ubuntu 16.04. Although also subject to the loss of some controls, it remains 
a powerful tool, courtesy of its [many plug-ins](https://wiki.gnome.org/Apps/Gedit/PluginsLists). 
This script installs a number additional plug-ins that for whatever reason are 
not included in the stock Ubuntu 16.04 image.

These plug-ins must be activated manually, accessing the dialogue: *Edit* > 
*Preferences* > *Plugins*.

Instructions
------------

This set of scripts can be downloaded from GitHub as 
[a compressed archive](https://github.com/ldesousa/fix-ubuntu/archive/master.zip) 
or checked out directly with git:

`git clone https://github.com/ldesousa/fix-ubuntu.git fix-ubuntu`

Since these scripts install software and change default applications, they must 
be run with `sudo` privileges. E.g.:

`sudo sh ./00-fix-all.sh`

The same for a single script:

`sudo sh ./06-fix-video-player.sh`

Licence
-------

This set of scripts is released under the European Union Public Licence v 1.1.
Please consult the LICENCE file for details.
