#!/usr/bin/env sh

echo "Installing nodejs and npm..."
if [[ "$OSTYPE" == "linux"* ]]; then
    if command -v pacman >/dev/null; then
        sudo pacman -Sy nodejs npm
    fi
elif [[ "$OSTYPE" == "darwin"* ]]; then
    brew install node
fi

echo "Installing typescript-language-server (Emacs LSP requirement)..."
npm install -g typescript-language-server typescript
