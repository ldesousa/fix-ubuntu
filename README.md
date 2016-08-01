Fix Ubuntu
==========

A set of shell scripts automating a number of tasks required for a fully
functional desktop user interface.

Copyright
--------------------------------------------------------------------------------

Copyright 2016 Luís Moreira de Sousa. All rights reserved.
Any use of these documents constitutes full acceptance of all terms of the
documents licence.

Reasoning
---------

Since the 12.04 release Ubuntu has provided what is these days one of desktop
user interfaces: Unity. Even if not preferred by everyone, Unity boasts a number
of features that far beyond improving the visual quality of the interface,
greatly increase productivity.

However, in subsequent releases the core applications shipped with Ubuntu (e.g.
file browser, document reader, media player, file editor) have been largely
eroded, with a large number of features consistently removed. When Ubuntu 16.04
was released most of these applications are practically unusable.

This set of scripts automates a number of tasks that became mandatory after a
fresh Ubuntu 16.04 install. It sets up a number of applications that retain the
full features expected in a desktop computer.

These scripts do not remove any software, all applications originally shipped
with Ubuntu remain in the system.

00-fix-all.sh
-------------

Run all the fixing scripts in one go.

01-fix-theme.sh
---------------

Ubuntu stopped shipping with a dark theme in 2011. Since then users mindful of
eye fatigue or suffering with colourblindness to some degree are forced to
source their own theme.

This script install the Ark Dark theme; presents an appeasing and tranquilising
set of colours while integrating perfectly with Unity.

02-fix-file-manager.sh
----------------------

Ubuntu ships with Nautilus, a file browser that lost a great deal of
functionality and graphical agility some years ago. This script installs Nemo, a
fork of the last fully functional Nautilus release (3.8) that has itself been
developed further.

03-fix-document-reader.sh
-------------------------

Ubuntu ships with a minimal document reader, not allowing much beyond opening
documents and zooming in and out. This scripts installs Okular, a full featured
document reader providing tools to annotate and comment on PDF documents. It
also has a wide variety of accessibility options.

04-tooling.sh
-------------

Installs a number of useful tools, e.g. htop.

05-fix-video-editor.sh
----------------------

Ubuntu 16.04 no longer ships with a video editor. This script install Avidemux,
which had been the default video editor heretofore.

Licence
-------

This set of scripts is released under the European Union Public Licence v 1.1.
Please consult the LICENCE file for details.
