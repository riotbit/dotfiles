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
eval "$(pyenv init -)"
echo "Update relevant python packages"
pyenv deactivate
pyenv global 2.7.15
pip install -U pip
pip install -U jedi flake8 importmagic autopep8 yapf epc json-rpc service_factory isort pycodestyle
pyenv global 3.7.1
pip install -U pip
pip install -U jedi flake8 importmagic autopep8 yapf epc json-rpc service_factory isort pycodestyle
pyenv global 3.7.1

echo "
================================
Zsh
================================
"
source '${HOME}/.zplugin/bin/zplugin.zsh'
zplugin self-update
zplugin update
