#!/bin/bash

cd /var/jenkins_home/JENKINS_CICD
git clone https://github.com/stefanprodan/dockprom
cp /var/jenkins_home/JENKINS_CICD/dockerpromModification/GrafanaDashboardExtra/*.json /var/jenkins_home/JENKINS_CICD/dockprom/grafana/provisioning/dashboards
cp /var/jenkins_home/JENKINS_CICD/dockerpromModification/Prometheus/*.yml /var/jenkins_home/JENKINS_CICD/dockprom/prometheus
cd dockprom
ADMIN_USER=admin
ADMIN_PASSWORD=admin
docker-compose up -d
