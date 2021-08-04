source "../env" || exit 1

if command -v pyenv >/dev/null; then
    pyenv install ${PYTHON_BASE_VERSION}
    pyenv global ${PYTHON_BASE_VERSION}
    pip install -U pip pip-tools
    pip-compile ${HOME}/.python-dev-requirements.in
    pip install -Ur ${HOME}/.python-dev-requirements.txt
fi

