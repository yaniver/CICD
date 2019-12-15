#!/bin/bash

echo "Deploy Solr exporter: ${date}"
JENKINS_HOME="/var/lib/jenkins"
cd ${JENKINS_HOME}/CICD/SolrExporter
export volume_path=${JENKINS_HOME}/CICD/SolrExporter
export solrexporter_path=/mnt/solrexporter
sudo docker build -t solrexporter .
solrExpoExist=$(sudo docker ps -f name=solrexporter | grep solrexporter)
if [[ "$solrExpoExist" == "" ]]
then
	sudo docker run --name solrexporter --volume "${volume_path}":${solrexporter_path} --network=dockprom_monitor-net -d --restart always -p 8094:8094 -p 8095:8095 -p 8096:8096 solrexporter
fi
