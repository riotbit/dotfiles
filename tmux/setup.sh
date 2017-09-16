# Requirements
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    sudo apt install tmux 
elif [[ "$OSTYPE" == "darwin"* ]]; then
    brew install tmux
fi

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

ln -s $DOTDIR/tmux/tmux.conf ~/.tmux.conf
