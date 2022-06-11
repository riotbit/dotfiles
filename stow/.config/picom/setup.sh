#!/bin/sh

sudo pacman -Syy
sudo pacman -S --needed picom

# necessary for setting solid background
sudo pacman -S --needed hsetroot
