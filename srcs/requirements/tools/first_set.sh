#!/bin/bash

apt-get update

sudo apt-get install -y apt-transport-https \
ca-certificates \
curl \
software-properties-common \
vim \
systemd

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 8B48AD6246925553

sudo apt-get update

rm -rf resolv.conf
cp ./resolv.conf /etc/

sudo curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"