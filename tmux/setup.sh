#!/bin/bash

export DOTDIR=${HOME}/.dotfiles

# Requirements
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    if command -v apt  >/dev/null; then 
        sudo apt install tmux 
    fi
    if command -v pacman >/dev/null; then 
        sudo pacman -Sy tmux 
    fi
    sed -i "s/tmux\.macos\.conf/tmux\.linux\.conf/g" ${DOTDIR}/tmux/tmux.conf
elif [[ "$OSTYPE" == "darwin"* ]]; then
    brew install tmux
fi

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

rm ${HOME}/.tmux.conf
ln -s $DOTDIR/tmux/tmux.conf ${HOME}/.tmux.conf
