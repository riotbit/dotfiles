#!/bin/zsh

echo "Update emacs..."
cd ${HOME}/.emacs.d && git pull --rebase
echo "Update emacs packages..."
echo "Updating neovim plugins..."
nvim +PlugUpdate +qall
nvim +PlugUpgrade +qall
echo "Updating npm..."
npm -g upgrade
echo "Start Tmux and press: tmux Ctrl-a U"

echo "Update relevant python packages"
pyenv deactivate
pyenv local 2.7.15 && sudo -H pip install -U pip && sudo -H pip install -U jedi flake8 importmagic autopep8 yapf epc json-rpc service_factory isort pycodestyle
pyenv local 3.7.1 && sudo -H pip install -U pip && sudo -H pip install -U jedi flake8 importmagic autopep8 yapf epc json-rpc service_factory isort pycodestyle
pyenv local --unset

source ${ZPLUG_HOME}/init.zsh
zplug update
