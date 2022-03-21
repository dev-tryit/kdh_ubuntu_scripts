#!/bin/bash
flutterPath=https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_2.10.3-stable.tar.xz
sdkPath=/app/sdk

sudo apt update && sudo apt install -y lsof && sudo apt install xz-utils

sudo mkdir $sdkPath

sudo curl $flutterPath --output $sdkPath/flutter.tar.xz
sudo tar xf $sdkPath/flutter.tar.xz -C $sdkPath/

sudo cp -r /config/init/.bashrc ~/.bashrc
importStr="export PATH=""$"
importStr+="PATH:${sdkPath}/flutter/bin"""
sudo echo $importStr >> ~/.bashrc
source ~/.bashrc

sudo chmod 700 $sdkPath -R
sudo chown abc.abc $sdkPath -R
