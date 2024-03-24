#!/bin/bash

# Check if the script is run with root privileges
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root (with sudo)." 1>&2
    exit 1
fi

# Install dotnet-runtime using yay
echo "Installing dotnet-runtime..."
yay -S --noconfirm dotnet-runtime

echo "dotnet-runtime installation complete."

