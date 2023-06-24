#!/usr/bin/env sh

echo "Installing Emacs requirements..."
if [[ "$OSTYPE" == "linux"* ]]; then
    if command -v pacman >/dev/null; then
        sudo pacman -Sy libvterm cmake emacs ripgrep git fd
    fi
    echo "Installing Doom Emacs..."
    git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs

elif [[ "$OSTYPE" == "darwin"* ]]; then
    brew install libvterm cmake
fi
