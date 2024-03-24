#!/bin/bash

# Check if the script is run with root privileges
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root (with sudo)." 1>&2
    exit 1
fi

# Install base-devel if not already installed (required for building packages)
pacman -S --needed --noconfirm base-devel

# Clone yay repository from AUR
echo "Cloning yay repository..."
git clone https://aur.archlinux.org/yay.git /tmp/yay

# Change directory to the cloned repository
cd /tmp/yay

# Build and install yay
echo "Building and installing yay..."
makepkg -si --noconfirm

# Clean up
echo "Cleaning up..."
rm -rf /tmp/yay

echo "yay installation complete."

