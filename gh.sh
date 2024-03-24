#!/bin/bash

# Check if the script is run with root privileges
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root (with sudo)." 1>&2
    exit 1
fi

# Install Git
echo "Installing Git..."
pacman -S --noconfirm git

# Install GitHub CLI
echo "Installing GitHub CLI..."
pacman -S --noconfirm github-cli

echo "Git and GitHub CLI installation complete."

