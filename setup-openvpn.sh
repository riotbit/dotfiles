if [[ "$OSTYPE" == "linux"* ]]; then
    if command -v pacman >/dev/null; then
        yay openvpn-update-systemd-resolved
    fi
fi
sudo systemctl enable systemd-resolved
sudo systemctl restart systemd-resolved
