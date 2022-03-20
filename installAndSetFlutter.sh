#!/bin/bash
flutterPath=https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_2.10.3-stable.tar.xz
sdkPath=/sdk

mkdir $sdkPath
cd $sdkPath
curl $flutterPath --output flutter.tar.xz
tar xf flutter.tar.xz
echo 'export PATH="$PATH:${sdkPath}/flutter/bin"' >> ~/.bashrc
source ~/.bashrc

cd ../
chmod 700 $sdkPath -R
chown abc.abc $sdkPath -R
