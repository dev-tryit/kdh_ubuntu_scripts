#!/bin/bash
nvmPath=https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh
sudo curl -o- $nvmPath | bash

source ~/.profile
source ~/.bashrc
source ~/.zshrc 

nvm install --lts
nvm use --lts

npm install -g typescript
npm install -g ts-node
