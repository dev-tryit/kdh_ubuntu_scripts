#!/bin/bash

sudo apt install unzip zip
curl -s "https://get.sdkman.io" | bash
source ~/.sdkman/bin/sdkman-init.sh
sdk version
