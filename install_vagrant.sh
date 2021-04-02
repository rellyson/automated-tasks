#!/bin/bash

UBUNTU_VERSION=$(lsb_release -sr)

echo "\e[33mTHIS IS AN AUTOMATED VAGRANT INSTALL SCRIPT FOR UBUNTU ONLY!\e[0m"

# installing virtualbox and dependencies
sudo apt update && sudo apt install virtualbox curl -y

#download vagrant debian package. The latest package can be found at: https://releases.hashicorp.com/vagrant/
curl -O https://releases.hashicorp.com/vagrant/2.2.15/vagrant_2.2.15_x86_64.deb

#install package
sudo dpkg -i vagrant_2.2.15_x86_64.deb
rm vagrant_2.2.15_x86_64.deb

echo "Vagrant version $(vagrant --version) installled succesfully!"
