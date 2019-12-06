Prerequsite (Installing Docker + Docker-compose + Jenkins): 
===========
  Linux VM with Internet connection (such as,  Ubuntu 19 create from Hyper-V or VMware workstation  in Windows)
    Note: enable internet connection link: https://superuser.com/questions/469806/windows-8-hyper-v-how-to-give-vm-internet-access)
  sudo apt install git
  git clone -depth=1  https://github.com/yaniver/CICD.git
  cd CICD
  Run script --> "sudo ./prerequisiteCICD.sh"
  (Optional (for Git push later on)- 
   Run command --> sudo cp -avr ~/CICD /var/lib/jenkins
   cd /var/lib/jenkins/CICD
   git init)

Jenkins - login + Plugins install
===============================
Open browser (http://localhost:8080/) and Copy-Paste value from  command "sudo cat /var/lib/jenkins/secrets/initialAdminPassword"
Add user name and pw (username:yaniv ;  pw=err) and change Jenkins URL to VM hostname
Select "Installed suggested Plugins"
Inside Jenkins Plugin Manager-->Available, install blue ocean plugin




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

GIT:
====
  Push local changes to github -
	git init (only for first time)
	git add <folder name or file name>
	git commit -m "<relevant comment>"
	for checking if other files were change\added\deleted run command - git status
	git push origin master
