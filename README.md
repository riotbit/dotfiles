# dotfiles

config managed with gnu-stow

WM: bspwm

Compositor: picom

Editor: emacs,neovim

Notification: dunst

## Setup

```sh
cd ~/dev/dotfiles
stow -v --target=${HOME} .
```

Execute setup.sh scripts in setup/ and .config/TOOL/setup.sh

## TODO

- tmux: environment specific config 
- zsh: refactor zshrc
- zsh: sync histfile
- find good solution for diff alias/tool
- find emacsclient solution
- move ENV from zsh to better place
- check if the openvpn workaround in setup is still necessary
