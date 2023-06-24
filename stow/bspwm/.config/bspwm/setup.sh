#!/bin/bash

sudo pacman -Syy
sudo pacman -S --needed bspwm

# keyboard hotkeys
sudo pacman -S sxhkd

# hsetroot: replaces xsetroot because of compability with compositor
sudo pacman -S hsetroot
