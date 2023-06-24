autoload -Uz compinit
compinit

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Load Env
source "${HOME}/.zshenv"


# Added by Zplugin's installer
# only if things are autoloaded
if ls "${HOME}/.config/zsh/autoload/zshrc"* 1> /dev/null 2>&1; then
    source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
    autoload -Uz _zinit
    (( ${+_comps} )) && _comps[zinit]=_zinit
fi

# load base files
# set vi command, load aliases...
for f in ${HOME}/.config/zsh/base/zshrc.*; do
    [ -e "$f" ] || continue;
      source "$f";
done

# load extensions
# if statement prevents error on empty dir
if ! [ -z "$(ls -A ${HOME}/.config/zsh/autoload/)" ]; then
    for f in ${HOME}/.config/zsh/autoload/zshrc.*
    do
        [ -e "$f" ] || continue;
        source "$f";
    done
fi
### End of Zinit's installer chunk
