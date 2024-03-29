export PATH=${HOME}/bin:${PATH}
export LANG="en_US.UTF-8"
export TERM="xterm-256color"
export EDITOR="emacs"
export BROWSER="firefox"


if [[ "$OSTYPE" != "linux"* ]]; then
    export PATH=$PATH:/Library/TeX/texbin
    # homebrew directory
    export PATH=/usr/local/bin:$PATH
fi

# extension specific

if [[ -f "${HOME}/.config/zsh/autoload/zshrc.python" ]]; then
    export PYENV_ROOT="$HOME/.pyenv"
    export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init --path)"
fi

if [[ -d "${HOME}/.krew/" ]]; then
   export PATH="${PATH}:${HOME}/.krew/bin"
fi

PATH="$HOME/.node_modules/bin:$PATH"
export npm_config_prefix=~/.node_modules

# different font sizes for alacritty based on Host

if [[ "$HOST" == "gucky" ]]; then
    export WINIT_X11_SCALE_FACTOR=1
elif [[ "$HOST" == "rhodan" ]]; then
    export WINIT_X11_SCALE_FACTOR=1
fi
