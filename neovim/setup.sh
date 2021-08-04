#!/bin/bash

source "../env" || exit 1

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
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p ${HOME}/.config/nvim
rm ${HOME}/.config/nvim/init.vim
ln -s $DOTDIR/neovim/init.vim ${HOME}/.config/nvim/init.vim
nvim +PlugInstall +qall
