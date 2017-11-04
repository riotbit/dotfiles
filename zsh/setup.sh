#!/bin/bash

DOTDIR=${HOME}/.dotfiles

# Requirements
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    if command -v apt >/dev/null; then 
        sudo apt install python-pip zsh curl 
    fi
    
    if command -v pacman >/dev/null; then 
        sudo pacman -Sy python-pip zsh curl fzf python2 python2-pip
    fi
elif [[ "$OSTYPE" == "darwin"* ]]; then
    brew install fzf python-pip getantibody/tap/antibody zsh ripgrep 
fi

# Install powerline fonts
git clone https://github.com/powerline/fonts.git --depth=1 /tmp/fonts
cur_dir=$(pwd)
cd /tmp/fonts
./install.sh
cd ${cur_dir}
rm -Rf fonts


if command -v fzf >/dev/null; then 
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install --bin
fi

sudo pip2 install virtualenv virtualenvwrapper

curl -sL https://git.io/antibody | bash -s

rm ${HOME}/.zshrc
ln -s ${DOTDIR}/zsh/zshrc ${HOME}/.zshrc

chsh -s $(which zsh) $USER





