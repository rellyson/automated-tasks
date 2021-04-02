#!/bin/bash

#you can specify a version for nodejs here
NODE_VERSION=15.x

echo "\e[33mTHIS IS AN AUTOMATED NODEJS INSTALL SCRIPT FOR UBUNTU ONLY!\e[0m"

# install nodejs apt list and package
curl -fsSL https://deb.nodesource.com/setup_${NODE_VERSION} | sudo -E bash -
sudo apt-get install -y nodejs npm

# install yarn package
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install yarn -yarn

# install node version manager
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
