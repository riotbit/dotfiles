#!/bin/bash

source "${HOME}/.config/python/ENV" || exit 1

echo "Installing pyenv..."
if ! [[ -d "${HOME}/.pyenv" ]]; then
  git clone https://github.com/pyenv/pyenv.git ${HOME}/.pyenv
  git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv
  echo "Check if necessary configuration is made for zshrc"
else
  echo ".pyenv already existing. Skipping git clone..."
fi

echo "Base Setup for pyenv with version ${PYTHON_BASE_VERSION} ..."
if command -v pyenv >/dev/null; then
    pyenv install ${PYTHON_BASE_VERSION}
    pyenv global ${PYTHON_BASE_VERSION}
    pip install -U pip pip-tools
    pip-compile ${HOME}/.config/python/python-dev-requirements.in
    pip install -Ur ${HOME}/.config/python/python-dev-requirements.txt
else
  >&2 echo "Pyenv Base Setup failed!"
  exit 1
fi
