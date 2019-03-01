#!/bin/bash

DOTDIR=${HOME}/.dotfiles

# Requirements
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    if command -v apt >/dev/null; then
        echo "Requirements: sudo apt install zsh curl fonts-powerline"
    fi

    if command -v pacman >/dev/null; then
        echo "Requirements: sudo pacman -Sy zsh curl ripgrep fonts-powerline"
    fi
elif [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Requirements: brew install zsh curl ripgrep"
fi

ln -s ${DOTDIR}/zsh/zshrc ${HOME}/.zshrc

chsh -s $(which zsh) $USER
