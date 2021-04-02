#!/bin/bash

echo "\e[33mTHIS IS AN AUTOMATED POST INSTALL SCRIPT FOR UBUNTU ONLY!\e[0m"

# installing the common packages after installing ubuntu
sudo apt update && sudo apt upgrade -y && sudo apt dist-upgrade -y
sudo apt install -y git curl wget preload zram-config stacer zsh

# installing whatsapp web
curl -o http://packages.linuxmint.com/pool/import/w/whatsapp-desktop/whatsapp-desktop_0.6.1_amd64.deb
sudo dpkg -i whatsapp-desktop_0.6.1_amd64.deb
rm whatsapp-desktop_0.6.1_amd64.deb

# installing telegram desktop
sudo apt install telegram-desktop -y

# installing spotify for ubuntu
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update && sudo apt install spotify-client -y

# installing vs code
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor >packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt install apt-transport-https
sudo apt update && sudo apt install code -y
rm packages.microsoft.gpg
