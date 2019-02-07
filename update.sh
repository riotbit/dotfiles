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
pyenv local 2.7.15
sudo -H pip2 install -U --upgrade-strategy only-if-needed pip 
sudo -H pip2 install -U --upgrade-strategy only-if-needed jedi flake8 importmagic autopep8 yapf epc json-rpc service_factory python-language-server  pycodestyle
pyenv local 3.7.0
sudo -H pip3 install -U --upgrade-strategy only-if-needed pip 
sudo -H pip3 install -U --upgrade-strategy only-if-needed jedi flake8 importmagic autopep8 yapf epc json-rpc service_factory python-language-server  pycodestyle
pyenv local --unset
