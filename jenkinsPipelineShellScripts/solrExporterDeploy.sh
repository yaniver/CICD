#!/bin/bash

JENKINS_HOME="/var/lib/jenkins"
cd ${JENKINS_HOME}/CICD/SolrExporter
sudo docker build -t solrexporter .
solrExpoExist=$(sudo docker ps -f name=solrexporter | grep solrexporter)
if [[ "$solrExpoExist" == "5" ]]
then
	sudo docker run --name solrexporter -d --restart always -p 8095:8095 solrexporter
fi
