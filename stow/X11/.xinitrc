#!/bin/sh

# xinitrc runs automatically when you run startx.

for f in /etc/X11/xinit/xinitrc.d/*.sh; do
  . "$f"
done

. ${HOME}/.xprofile
exec bspwm
#exec xmonad
