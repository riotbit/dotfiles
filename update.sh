#!/bin/zsh

source "env" || exit 1

if [ -x "$(command -v emacs)" ]; then
    echo "
    ================================
    Emacs
    ================================
    "
    ${HOME}/.emacs.d/bin/doom build
    ${HOME}/.emacs.d/bin/doom upgrade
    ${HOME}/.emacs.d/bin/doom sync
else
    echo "emacs not installed"
fi

if [ -x "$(command -v nvim)" ]; then
    echo "
    ================================
    Neovim
    ================================
    "
    nvim +PlugUpdate +qall
    nvim +PlugUpgrade +qall
else
    echo "nvim not installed"
fi

if [ -x "$(command -v npm)" ]; then
    echo "
    ================================
    npm
    ================================
    "
    npm -g upgrade
else
    echo "npm not installed"
fi

source ${HOME}/.config/python/ENV

if [ -x "$(command -v pyenv)" ]; then
    echo "
    ================================
    Python
    ================================
    "
    eval "$(pyenv init -)"
    echo "Update relevant python packages"
    pyenv deactivate
    pyenv global ${PYTHON_BASE_VERSION}
    pip install -U pip pip-tools
    pip-compile ${HOME}/.config/python/python-dev-requirements.in
    pip install -Ur ${HOME}/.config/python/python-dev-requirements.txt
    pyenv virtualenvs --bare | while read x; do pyenv activate $x && pip install -U pip pip-tools && pip install -Ur ~/.python-dev-requirements.txt; done
    pyenv deactivate
else
    echo "pyenv not installed"
fi

# workaround: command -v does not work with zinit (shell function)
if [ -f "${HOME}/.zinit/bin/zinit.zsh" ]; then
    echo "
    ================================
    Zinit
    ================================
    "
    source ${HOME}/.zinit/bin/zinit.zsh
    zinit self-update
    zinit update
    zinit compile --all
else
    echo "zinit not installed"
fi

if [ -d "${HOME}/.aws/cli" ]; then
    echo "
    ================================
    AWS
    ================================
    "
    ${HOME}/scripts/install_aws_tools/aws_cli_upgrade.sh
    /usr/local/bin/aws --version
fi
