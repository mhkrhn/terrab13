#!/bin/bash

#Installing Docker

sudo apt-get update -y
sudo apt-get install -y

sudo curl -fsSL https://get.docker.com/ -o init-script.sh
sudo sh init-script.sh

sudo wget https://github.com/mhkrhn/mkBrief13.giT
sudo docker run -d --name mktest13 -p 8080:80 nginx
