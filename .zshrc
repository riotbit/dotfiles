OS="linux"

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# machine specific
if [[ -s "${HOME}/.zshrc.${OS}" ]]; then
  source "${HOME}/.zshrc.${OS}"
fi

# python
if [[ -s "${HOME}/.zshrc.python" ]]; then
  source "${HOME}/.zshrc.python"
fi

# theme
if [[ -s "${HOME}/.zshrc.theme" ]]; then
  source "${HOME}/.zshrc.theme"
fi

# minimal setup
export EDITOR="vim"

bindkey -v

# escape delay
# 10ms for key sequences
KEYTIMEOUT=1

bindkey '^R' history-incremental-search-backward
