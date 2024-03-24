#!/bin/bash

# Check if the script is run with root privileges
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root (with sudo)." 1>&2
    exit 1
fi

# Update the package database and upgrade installed packages
pacman -Syu --noconfirm

# Install Neovim
echo "Installing Neovim..."
pacman -S --noconfirm neovim

gh repo clone GustavEikaas/nvim-config
mkdir ~/.config/nvim
cp nvim-config ~/.config/nvim

echo "Neovim installation complete."

