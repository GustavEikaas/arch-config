#!/bin/bash

# Check if the script is run with root privileges
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root (with sudo)." 1>&2
    exit 1
fi

echo "Installing lsd..."
pacman -S --noconfirm lsd

echo "lsd installation complete."

# Check if ~/.zshrc exists, if not, create it
if [ ! -f ~/.zshrc ]; then
    touch ~/.zshrc
fi

# Check if alias is already present in ~/.zshrc, if not, append it
if ! grep -q "alias ls='lsd'" ~/.zshrc; then
    echo "alias ls='lsd'" >> ~/.zshrc
    echo "Added alias to ~/.zshrc"
fi

