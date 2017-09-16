#!/bin/bash

export DOTDIR="~/.dotdir"

# Requirements
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    sudo apt install fzf python-pip antibody zsh ripgrep 
elif [[ "$OSTYPE" == "darwin"* ]]; then
    brew install fzf python-pip antibody zsh ripgrep 
fi


