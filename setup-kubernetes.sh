if [[ "$OSTYPE" == "linux"* ]]; then
    if command -v pacman >/dev/null; then
        sudo pacman -Sy kubectl kubectx
        yay stern
    fi
fi
