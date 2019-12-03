cd ~/CICD
sudo git clone https://github.com/stefanprodan/dockprom
sudo cp ~/CICD/dockerpromModification/GrafanaDashboardExtra/*.json ~/CICD/dockprom/grafana/provisioning/dashboards
sudo cp ~/CICD/dockerpromModification/Prometheus/*.yml ~/CICD/dockprom/prometheus
cd dockprom
ADMIN_USER=admin
ADMIN_PASSWORD=admin
sudo docker-compose up -d
