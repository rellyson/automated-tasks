#!/bin/bash

#you can specify a version for postman here
POSTMAN_VERSION=8.0.10

#download postman from oficial release rep
curl https://dl.pstmn.io/download/version/8.0.10/linux64 -o Postman-linux-x64-${POSTMAN_VERSION}.tar.gz

#extract and install Postman
tar -xzf Postman-linux-x64-${POSTMAN_VERSION}.tar.gz
sudo mv Postman /opt/Postman
sudo ln -s /opt/Postman/Postman /usr/bin/postman

#create desktop entry file
cat >~/.local/share/applications/postman.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=Postman
Exec=postman
# Before v${POSTMAN_VERSION}
# Icon=/opt/Postman/resources/app/assets/icon.png
Icon=/opt/Postman/app/resources/app/assets/icon.png
Terminal=false
Type=Application
Categories=Development;
EOL

#remove downloaded tar
rm Postman-linux-x64-${POSTMAN_VERSION}.tar.gz
