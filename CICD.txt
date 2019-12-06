Prerequsite: 
===========
  Linux VM with Internet connection (such as,  Ubuntu 19 create from Hyper-V or VMware workstation  in Windows)
    Note: enable internet connection link: https://superuser.com/questions/469806/windows-8-hyper-v-how-to-give-vm-internet-access)
  Install docker -
	sudo apt update
	sudo apt install apt-transport-https ca-certificates curl software-properties-common
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
	sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
	sudo apt update
	apt-cache policy docker-ce
	sudo apt install docker-ce
	sudo systemctl status docker
  Install docker-compose -
	sudo curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
	sudo chmod +x /usr/local/bin/docker-compose
	docker-compose --version


GIT:
====
  Push local changes to github -
	git init (only for first time)
	git add <folder name or file name>
	git commit -m "<relevant comment>"
	for checking if other files were change\added\deleted run command - git status
	git push origin master

Jenkins Server Installation
========================
1. In Ubuntu\Linux VM, open linux terminal 
	sudo apt update
	sudo apt install git
	sudo apt install openjdk-8-jdk
	wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
	sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
	sudo apt update
	sudo apt install jenkins
	systemctl status jenkins
2. Open browser:
	http://localhost:8080/
	Copy-Paste value from previous command (.."cat /var/jenkins_home/secrets/initialAdminPassword")
	Add user name and pw (username:yaniv ;  pw=err) and change Jenkins URL to VM hostname
	Inside Jenkins UI install blue ocean plugin
3.      Run command --> sudo cp -avr home/yaniver/CICD /var/lib/jenkins
	cd /var/lib/jenkins/CICD
	git init
4.      sudo visudo
	Add the follwing line "jenkins ALL=(ALL) NOPASSWD: ALL"



Prometheus+Grafana+Alert_Manager Installation:
=============================================
Link (Full details): https://github.com/stefanprodan/dockprom
Check script in ../CICD/jenkinsPipelineShellScripts/dockpromDeploy.sh
(note: in case you need to delete all resources create by docker-compose including volume run the following command "sudo docker-compose down -v")

Prometheus exporter:
===================
Check script in ../CICD/jenkinsPipelineShellScripts/solrExporterDeploy.sh


JMeter deploy:
==============
Check script in ../CICD/jenkinsPipelineShellScripts/jmeterScriptExec.sh
