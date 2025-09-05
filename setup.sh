#!/bin/bash

set -e

# Setup Script
echo "Starting Setup..."

PKGS="neovim foot stow flatpak tmux ollama sway\
    sway-bg swaylock swayidle waybar\
    xdg-desktop-portal-wlr xorg-xwayland\
    grim slurp keyd\
    ttf-jetbrains-mono-nerd"

my_defaults() {
    echo ""
    echo "set -o vi"
    echo ""
    echo "alias vi='nvim'"
    echo "alias c='clear'"
    echo ""
    echo "export OLLAMA_OFFLINE=true"
    echo "export MANPAGER='nvim +Man!'"
}

echo "installing packages..."
sudo pacman -S --needed --noconfirm $PKGS
flatpak install -y app.zen_browser.zen com.github.tchx84.Flatseal

if ! grep -q "set -o vi" ~/.bashrc
then
    echo "updating bashrc..."
    my_defaults >> ~/.bashrc
fi

echo "creating directories..."
mkdir -p ~/Downloads ~/Documents ~/Documents/proj/java-proj ~/Documents/proj/lua-proj ~/Pictures 

if [ -d ~/dotfiles ]
then
    cd ~/dotfiles
    stow nvim sway waybar tmux foot
else
    echo "dotfiles does not exist"
fi
