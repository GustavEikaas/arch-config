#!/bin/bash

# Check if the script is run with root privileges
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root (with sudo)." 1>&2
    exit 1
fi

# Update the package database and upgrade installed packages
pacman -Syu --noconfirm

# Install Neofetch
echo "Installing Neofetch..."
pacman -S --noconfirm neofetch

echo "Neofetch installation complete."

# Check if ~/.zshrc exists, if not, create it
if [ ! -f ~/.zshrc ]; then
    touch ~/.zshrc
fi

# Check if Neofetch is already present in ~/.zshrc, if not, append it
if ! grep -q "neofetch" ~/.zshrc; then
    echo "neofetch" >> ~/.zshrc
    echo "Added neofetch to ~/.zshrc"
fi

