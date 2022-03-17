#!/bin/bash

sudo apt update && apt upgrade -y
sudo apt remove docker -y
sudo apt install docker.io -y
sudo systemctl enable docker
sudo systemctl start docker
sudo systemctl status docker
docker run hello-world
