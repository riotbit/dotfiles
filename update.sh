#!/bin/zsh

echo "
================================
Emacs
================================
"
cd ${HOME}/.emacs.d && git pull --rebase

echo "
================================
Neovim
================================
"
nvim +PlugUpdate +qall
nvim +PlugUpgrade +qall

echo "
================================
npm
================================
"
npm -g upgrade

echo "
================================
Tmux
================================
"
${HOME}/.tmux/plugins/tpm/bin/update_plugins all

echo "
================================
Python
================================
"
pyenv deactivate
pyenv local 2.7.15 && sudo -H pip install -U pip && sudo -H pip install -U jedi flake8 importmagic autopep8 yapf epc json-rpc service_factory isort pycodestyle
pyenv local 3.7.1 && sudo -H pip install -U pip && sudo -H pip install -U jedi flake8 importmagic autopep8 yapf epc json-rpc service_factory isort pycodestyle
pyenv local --unset

echo "
================================
Zsh
================================
"
source '/home/ckl/.zplugin/bin/zplugin.zsh'
zplugin self-update
zplugin update
