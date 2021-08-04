#!/bin/sh

source "../env"

mkdir ${HOME}/.config/alacritty
cp $(pwd)/alacritty.yml ${HOME}/.config/alacritty/alacritty.yml
sed -i \
    -e "s/\$ALACRITTY_FONT_SIZE/$ALACRITTY_FONT_SIZE/g" \
    ${HOME}/.config/alacritty/alacritty.yml
