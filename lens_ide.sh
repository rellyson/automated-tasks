#!/bin/bash

#you can specify a version for postman here
LENS_VERSION=Lens-5.1.1-latest.20210716.1.x86_64

#download postman from oficial release rep
curl https://lens-binaries.s3-eu-west-1.amazonaws.com/ide/${LENS_VERSION}.AppImage -o ${LENS_VERSION}.AppImage
curl https://www.mirantis.com/wp-content/uploads/2021/01/lens-logo-horizontal.png -o lens.png

#extract and install Postman
sudo mv ${LENS_VERSION}.AppImage /opt/Lens
sudo mv lens.png /opt/Lens/lens.png
sudo chmod +x /opt/Lens/${LENS_VERSION}.AppImage

#create desktop entry file
cat >~/.local/share/applications/lens.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=Lens IDE
Comment=The Kubernetes IDE for everyone.
Exec=/opt/Lens/${LENS_VERSION}.AppImage
# Before v5.1.1
# Icon=/opt/Lens/lens.png
Icon=/opt/Lens/lens.png
Terminal=false
Type=Application
Categories=Development;
EOL

#remove downloaded image
echo "Lens IDE successfully installed!"
