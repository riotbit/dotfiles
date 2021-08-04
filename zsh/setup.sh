#!/bin/bash

source "../env"

# Requirements
if [[ "$OSTYPE" == "linux"* ]]; then
    if command -v apt >/dev/null; then
        echo "Requirements: sudo apt install zsh curl fonts-powerline"
    fi

    if command -v pacman >/dev/null; then
        echo "Requirements: sudo pacman -Sy zsh curl ripgrep powerline-fonts fzf"
    fi
elif [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Requirements: brew install zsh curl ripgrep"
fi

ln -s ${DOTDIR}/zsh/zshrc ${HOME}/.zshrc
ln -s ${DOTDIR}/zsh/zshenv ${HOME}/.zshenv

chsh -s $(which zsh) $USER
