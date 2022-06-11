#!/bin/bash

# Requirements
if [[ "$OSTYPE" == "linux"* ]]; then
    if command -v apt  >/dev/null; then
        sudo apt install neovim
    fi
    if command -v pacman >/dev/null; then
        sudo pacman -Sy neovim
    fi
elif [[ "$OSTYPE" == "darwin"* ]]; then
    brew install neovim
fi

echo "Install vim-plug for nvim..."
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

nvim +PlugInstall +qall
