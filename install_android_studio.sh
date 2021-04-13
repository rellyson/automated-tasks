#!/bin/bash

#download android studio package. The latest package can be found at: https://developer.android.com/studio#downloads
curl \
https://r4---sn-bg07dn6k.gvt1.com/edgedl/android/studio/ide-zips/4.1.3.0/android-studio-ide-201.7199119-linux.tar.gz?mh=QN&mvi=4&pl=24&shardbypass=yes&redirect_counter=1&cm2rm=sn-jhqoxucg-jo4e7l&req_id=251aa23bd22ef859&cms_redirect=yes&mip=170.239.75.33&mm=42&mn=sn-bg07dn6k&ms=onc&mt=1618340198&mv=m \
-o android-studio-ide-201.7199119-linux.tar.gz

#extract and install Android Studio
tar -xzf android-studio-ide-201.7199119-linux.tar.gz
sudo mv android-studio /opt/android-studio
sudo ln -s /opt/android-studio /usr/bin/android-studio

#create desktop entry file
cat >~/.local/share/applications/android-studio.desktop <<EOL
[Desktop Entry]
Version=1.0
Type=Application
Name=Android Studio
Exec="/opt/android-studio/bin/studio.sh" %f
Icon=/opt/android-studio/bin/studio.png
Categories=Development;IDE;
Terminal=false
StartupNotify=true
StartupWMClass=jetbrains-android-studio
Name[en_GB]=android-studio.desktop
EOL

echo "Android studio installled succesfully!"
