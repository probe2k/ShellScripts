#!/bin/bash

# script to install flutter_sdk on linux

cd /opt

echo "Downloading flutter_sdk"

# using curl to download flutter_linux_v.tar.gz from flutter.dev/docs/get-started/install/linux

sudo curl -LO https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_v1.5.4-hotfix.2-stable.tar.xz

echo "Extracting flutter_sdk"
sudo tar xvf flutter*

echo "Extracted!"

# clearing downloaded .tar.gz files
sudo rm -rf flutter_linux*

echo "setting ownership for the folder"

sudo chown -R $USER:$USER /opt/flutter

# adding /flutter/bin to PATH variable

sudo echo "export PATH=${PATH}:/opt/flutter/bin" >> /etc/profile.d/flutter.sh

echo "Flutter_sdk is installed! Reboot shell"
