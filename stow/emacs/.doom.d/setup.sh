#!/bin/sh

# Updating
sudo pacman --needed -Syy

# Base packages
sudo pacman --needed -S ripgrep fd

# Markdown compiler for markdown preview
sudo pacman --needed -S marked

# Shellscript linitng
sudo pacman --needed -S shellcheck

# Dependency for org-roam
sudo pacman --needed -S sqlite3

# emacs auto format json
npm install -g js-beautify

# clipboard on linux für emacs
sudo pacman -Sy xsel

if ! [[ -d "${HOME}/.emacs.d" ]]; then
    git clone --depth 1 https://github.com/hlissner/doom-emacs ${HOME}/.emacs.d
    ${HOME}/.emacs.d/bin/doom install
fi
