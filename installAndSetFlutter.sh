#!/bin/bash
flutterPath=https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_2.10.3-stable.tar.xz
sdkPath=/app/sdk

sudo mkdir $sdkPath

sudo curl $flutterPath --output $sdkPath/flutter.tar.xz
sudo tar xf $sdkPath/flutter.tar.xz -C $sdkPath/

importStr="export PATH=""$"
importStr+="PATH:${sdkPath}/flutter/bin"""
sudo echo $importStr >> ~/.bashrc
source ~/.bashrc

sudo chmod -R 711 $sdkPath
sudo chown -R 1000:1000 $sdkPath
