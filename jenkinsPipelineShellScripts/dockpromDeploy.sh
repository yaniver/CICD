#!/bin/bash

cd ~/CICD
git clone https://github.com/stefanprodan/dockprom
cp ~/CICD/dockerpromModification/GrafanaDashboardExtra/*.json ~/CICD/dockprom/grafana/provisioning/dashboards
cp ~/CICD/dockerpromModification/Prometheus/*.yml ~/CICD/dockprom/prometheus
cd dockprom
ADMIN_USER=admin
ADMIN_PASSWORD=admin
docker-compose up -d
