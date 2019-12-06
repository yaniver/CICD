#!/bin/bash

JENKINS_HOME="/var/lib/jenkins"
cd ${JENKINS_HOME}/CICD/SolrExporter
sudo docker build -t solrexporter .
sudo docker run --name solrexporter -d --restart always -p 8095:8095 solrexporter
