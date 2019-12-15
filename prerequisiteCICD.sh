#!/bin/bash

clear
set -o errexit
sudo apt update -y
printf "\n\nInstall Docker -\n"
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update -y
apt-cache policy docker-ce
sudo apt install -y docker-ce
printf "\n\nInstall Docker-compose -\n"
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
sudo apt update -y
printf "\n\nInstall JAVA -\n"
sudo apt install -y openjdk-8-jdk
printf "\n\nInstall Jenkins -\n"
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update -y
sudo apt install -y jenkins
sudo cp -avr ~/CICD /var/lib/jenkins
cd /var/lib/jenkins/CICD
git init
echo 'jenkins ALL=(ALL) NOPASSWD: ALL' | sudo EDITOR='tee -a' visudo

