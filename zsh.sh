#!/bin/bash

# Check if the script is run with root privileges
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root (with sudo)." 1>&2
    exit 1
fi

# Update the package database and upgrade installed packages
pacman -Syu --noconfirm

# Install Zsh
echo "Installing Zsh..."
pacman -S --noconfirm zsh

# Change the default shell to Zsh for the current user
echo "Changing default shell to Zsh..."
usermod --shell $(which zsh) $(whoami)

echo "Zsh installation and configuration complete."

