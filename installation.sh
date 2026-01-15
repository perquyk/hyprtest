#!/bin/bash

echo "Starting Kenny's installation script..."

username="Kenny Perquy"
usermail="perquy.k@gmail.com"

packages=(
  neovim
  curl
  git
  github-cli
  btop
  fastfetch
  waybar
  hyprpaper
  rofi
)

echo "Installing packages..."
for package in ${packages[@]}; do
  yay -S ${package} --noconfirm --needed
done

echo "Setting up git with following settings:" 
echo "name: ${username}"
echo "email: ${email}"
echo "default branch: main"
git config set --global init.defaultBranch main
git config set --global user.name ${username}
git config set --global user.email ${email}

