echo "\e[33mTHIS IS AN AUTOMATED VAGRANT INSTALL SCRIPT FOR UBUNTU ONLY!\e[0m"

#update repositories and install dependencies
sudo apt update && apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

# add docker oficial GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# create apt list entry
echo \
    "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list >/dev/null

#install docker engine

sudo apt update && sudo apt install -y docker-ce docker-ce-cli containerd.io

# update docker user entries
sudo groupadd docker
sudo usermod -aG docker $USER
sudo su - $USER

echo "Your docker installation is ready to be used!"
