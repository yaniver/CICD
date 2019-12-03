#!/bin/bash

echo ${HOME}/CICD
sudo git clone https://github.com/stefanprodan/dockprom
cp ./dockerpromModification/GrafanaDashboardExtra/*.json ./dockprom/grafana/provisioning/dashboards
cp ./dockerpromModification/Prometheus/*.yml ./dockprom/prometheus
cd dockprom
ADMIN_USER=admin
ADMIN_PASSWORD=admin
sudo docker-compose up -d
