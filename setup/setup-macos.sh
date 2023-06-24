#!/usr/bin/env sh

# opening and closing windows and popovers
defaults write -g NSAutomaticWindowAnimationsEnabled -bool false

# increase speed of resize animation
defaults write NSGlobalDomain NSWindowResizeTime .001
