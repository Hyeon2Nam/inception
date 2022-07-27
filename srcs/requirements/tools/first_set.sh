#!/bin/bash

apt-get update

sudo apt-get install -y apt-transport-https
sudo apt-get install -y ca-certificates
sudo apt-get install -y curl
sudo apt-get install -y software-properties-common
sudo apt-get install -y vim
sudo apt-get install -y systemd

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 8B48AD6246925553

sudo apt-get update

rm -rf /etc/resolv.conf
cp ./resolv.conf /etc/

sudo curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"