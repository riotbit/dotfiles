source "../env" || exit 1

echo "Create symbolic link for python-dev-requirements.in"
ln -s ${DOTDIR}/python/python-dev-requirements.in ${HOME}/.python-dev-requirements.in

if ! [[ -d "${HOME}/.pyenv" ]]; then
  git clone https://github.com/pyenv/pyenv.git ${HOME}/.pyenv
  git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv
  echo "Check if necessary configuration is made for zshrc"
fi
