#!/bin/bash

sudo apt update && apt upgrade -y
sudo apt remove docker-compose -y
sudo apt install docker-compose -y
