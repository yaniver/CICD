#!/bin/bash

JENKINS_HOME="/var/lib/jenkins"
cd ${JENKINS_HOME}/CICD
sudo git clone https://github.com/stefanprodan/dockprom
sudo cp ${JENKINS_HOME}/CICD/dockerpromModification/GrafanaDashboardExtra/*.json ${JENKINS_HOME}/CICD/dockprom/grafana/provisioning/dashboards
sudo cp ${JENKINS_HOME}/CICD/dockerpromModification/Prometheus/*.yml ${JENKINS_HOME}/CICD/dockprom/prometheus
cd dockprom
ADMIN_USER=admin
ADMIN_PASSWORD=admin
sudo docker-compose up -d
