#!/bin/bash

export DOTDIR=${HOME}/.dotfiles

# Requirements
if [[ "$OSTYPE" == "linux"* ]]; then
    if command -v apt  >/dev/null; then
        sudo apt install neovim python-pip
    fi
    if command -v pacman >/dev/null; then
        sudo pacman -Sy neovim python-pip python2-pip
    fi
elif [[ "$OSTYPE" == "darwin"* ]]; then
    brew install neovim python2 python3
fi

echo "Install vim-plug for nvim..."
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

source $(which virtualenvwrapper.sh)
echo "Create virtualenvs for neovim (jedi plugin)..."
mkvirtualenv -p "python2" neovim2
workon neovim2
pip install neovim
mkvirtualenv -p "python3" neovim3
workon neovim3
pip install neovim
virtualenv_deactivate

mkdir -p ${HOME}/.config/nvim
rm ${HOME}/.config/nvim/init.vim
ln -s $DOTDIR/neovim/init.vim ${HOME}/.config/nvim/init.vim
nvim +PlugInstall +qall
