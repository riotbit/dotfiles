#!/bin/bash

export DOTDIR="~/.dotdir"

# Requirements
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    sudo apt install python-pip zsh curl
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

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --bin

curl -sL https://git.io/antibody | bash -s

ln -s $DOTDIR/zsh/zshrc ~/.zshrc

chsh -s $(which zsh) $USER
zsh





