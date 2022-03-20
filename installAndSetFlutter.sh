#!/bin/bash
flutterPath=https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_2.10.3-stable.tar.xz
sdkPath=/app/sdk

mkdir $sdkPath
cd $sdkPath
curl $flutterPath --output flutter.tar.xz
tar xf flutter.tar.xz
importStr="export PATH=""$"
importStr+="PATH:${sdkPath}/flutter/bin"""
echo $importStr >> ~/.bashrc
source ~/.bashrc

chmod 700 $sdkPath -R
chown abc.abc $sdkPath -R
