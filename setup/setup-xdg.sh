#!/bin/bash

echo "Setting Default Applications"

###
# To debug use: XDG_UTILS_DEBUG_LEVEL=2 xdg-mime query default application/pdf
# (pdf example)
#
# Get a MIME-Type: xdg-mime query filetype <FILE>
# 
# Get a .desktop reference: ls -1 /usr/share/applications/*.desktop | grep -i "nautilus"
# (nautitlus exampel)
###

set -x
xdg-mime default org.gnome.Nautilus.desktop inode/directory
xdg-mime default emacs.desktop text/x-shellscript
xdg-mime default emacs.desktop text/plain
xdg-mime default emacs.desktop text/x-lisp
xdg-mime default emacs.desktop text/x-script.python
xdg-mime default emacs.desktop inode/x-empty
set +x

echo "Setting User Directories"

set -x
xdg-user-dirs-update --set DESKTOP "$HOME/desktop"
xdg-user-dirs-update --set DOCUMENTS "$HOME/documents"
xdg-user-dirs-update --set DOWNLOAD "$HOME/downloads"
xdg-user-dirs-update --set MUSIC "$HOME/music"
xdg-user-dirs-update --set PICTURES "$HOME/pictures"
xdg-user-dirs-update --set PUBLICSHARE "$HOME/public"
xdg-user-dirs-update --set TEMPLATES "$HOME/templates"
xdg-user-dirs-update --set VIDEOS "$HOME/movies"
set +x
