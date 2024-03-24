#!/bin/bash

# Check if the script is run with root privileges
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root (with sudo)." 1>&2
    exit 1
fi

# Update the package database and upgrade installed packages
pacman -Syu --noconfirm

# Install Node.js and npm
echo "Installing Node.js and npm..."
pacman -S --noconfirm nodejs npm

npm i -G yarn pnpm vite typescript turbo
echo "Node.js and npm installation complete."

