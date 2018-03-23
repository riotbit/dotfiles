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

