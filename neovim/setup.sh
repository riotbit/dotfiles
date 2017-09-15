echo "Install vim-plug..."
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Create virtualenvs for neovim (jedi plugin)..."
mkvirtualenv -p "python2" neovim2
workon neovim2
pip install neovim
mkvirtualenv -p "python3" neovim3
workon neovim3
pip install neovim
virtualenv_deactivate
