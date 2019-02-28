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

source ${ZPLUG_HOME}/init.zsh
zplug update
