#!/bin/zsh

if [ -x "$(command -v emacs)" ]; then
    echo "
    ================================
    Emacs
    ================================
    "
    cd ${HOME}/.emacs.d && git pull --rebase
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

if [ -x "$(command -v tmux)" ]; then
    echo "
    ================================
    Tmux
    ================================
    "
    ${HOME}/.tmux/plugins/tpm/bin/update_plugins all
else
    echo "tmux not installed"
fi

if [ -x "$(command -v pyenv)" ]; then
    echo "
    ================================
    Python
    ================================
    "
    eval "$(pyenv init -)"
    echo "Update relevant python packages"
    pyenv deactivate
    pyenv global 3.7.4
    pip install -U pip
    pip install -U jedi flake8 importmagic autopep8 yapf epc json-rpc service_factory isort pycodestyle
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
else
    echo "zinit not installed"
fi
