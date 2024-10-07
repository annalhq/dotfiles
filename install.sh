#!/bin/bash

install_hyprland() {
    echo "Installing Hyprland configurations..."
    cp -r hyprland ~/.config/hyprland
    echo "Hyprland configurations installed successfully."
}

install_nvim() {
    echo "Installing Neovim configurations..."
    cp -r nvim ~/.config/nvim
    echo "Neovim configurations installed successfully."
}

echo "Choose the configuration to install:"
echo "1. Hyprland"
echo "2. Neovim"
read -p "Enter your choice (1 or 2): " choice

case $choice in
    1)
        install_hyprland
        ;;
    2)
        install_nvim
        ;;
    *)
        echo "Invalid choice. Exiting...."
        exit 1
        ;;
esac