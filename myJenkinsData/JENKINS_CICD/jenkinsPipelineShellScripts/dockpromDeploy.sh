#!/bin/bash

cd ~/JENKINS_CICD
git clone https://github.com/stefanprodan/dockprom
cp ~/JENKINS_CICD/dockerpromModification/GrafanaDashboardExtra/*.json ~/JENKINS_CICD/dockprom/grafana/provisioning/dashboards
cp ~/JENKINS_CICD/dockerpromModification/Prometheus/*.yml ~/JENKINS_CICD/dockprom/prometheus
cd dockprom
ADMIN_USER=admin
ADMIN_PASSWORD=admin
docker-compose up -d
