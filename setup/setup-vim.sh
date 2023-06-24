#!/bin/bash

# TODO Neovim

# Package Management
# https://github.com/wbthomason/packer.nvim
echo "Setup Package Manager..."
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
