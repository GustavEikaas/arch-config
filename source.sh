#!/bin/bash

# Check if the script is run with root privileges
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root (with sudo)." 1>&2
    exit 1
fi

echo "Updating pacman"
pacman -Syu --noconfirm

echo "Installing yay"
./yay.sh

echo "Installing github tools"
./gh.sh

echo "Setting up nerd-font"
./nerd-font.sh

echo "Setting up zsh"
./zsh.sh

echo "Setting up neovim"
./neovim.sh

echo "Setting up dotnet"
./dotnet.sh

echo "Setting up npm"
./npm.sh

echo "Setting up tmux"
./tmux.sh

echo "Setting up oh-my-zsh"
./oh-my-zsh.sh

echo "Setting up neofetch"
./neofetch.sh

echo "Setting up azure cli"
./azure-cli.sh
