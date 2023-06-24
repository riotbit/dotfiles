#!/bin/sh

# Requirements
if [[ "$OSTYPE" == "linux"* ]]; then
    if command -v apt  >/dev/null; then
        sudo apt install tmux
    fi
    if command -v pacman >/dev/null; then
        sudo pacman -Sy tmux
    fi
elif [[ "$OSTYPE" == "darwin"* ]]; then
    brew install tmux
fi

git clone https://github.com/tmux-plugins/tpm ${HOME}/.config/tmux/plugins/tpm

# remove junk after install
rm ${HOME}/.tmux.conf
