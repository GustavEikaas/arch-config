#!/bin/bash

if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root (with sudo)." 1>&2
    exit 1
fi

echo "Installing Azure CLI..."
pacman -S --noconfirm extra/azure-cli

echo "Azure CLI installation complete."

