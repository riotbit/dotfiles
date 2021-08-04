#!/bin/sh

if [ -f "$(pwd)/env" ]; then
    ln -s "$(pwd)/env" "/home/${USER}/.dotfiles_env"
else
    echo "Setup not possible. Configure your env file."
fi
