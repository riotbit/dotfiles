echo "Update emacs..."
cd ${HOME}/.emacs.d && git pull --rebase
echo "Update emacs packages..."
emacs --batch --load=~/.emacs.d/init.el
echo "Updating neovim plugins..."
nvim +PlugUpdate +qall
nvim +PlugUpgrade +qall
echo "Updating npm..."
npm -g upgrade
echo "Start Tmux and press: tmux Ctrl-a U"
echo "Update relevant python packages"
pyenv deactivate
pyenv local 2.7.12
sudo -H pip2 install -U pip 
sudo -H pip2 install -U jedi flake8 importmagic autopep8 yapf epc json-rpc service_factory
pyenv local 3.6.4
sudo -H pip3 install -U pip 
sudo -H pip3 install -U jedi flake8 importmagic autopep8 yapf epc json-rpc service_factory
pyenv local --unset
