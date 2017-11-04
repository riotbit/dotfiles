echo "Updating zsh plugins..."
antibody update
echo "Updating neovim plugins..."
nvim +PlugUpdate +qall
nvim +PlugUpgrade +qall
echo "Start Tmux and press: tmux Ctrl-a U"
