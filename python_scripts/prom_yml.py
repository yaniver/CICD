import yaml

with open(r'/home/yaniver/CICD/dockprom/prometheus/prometheus.yml') as file:
    documents = yaml.full_load(file)

    for item, doc in documents.items():
        print(item, ":", doc)



dict_file = [{'scrape_configs' : ['job_name', 'zk', 'scrape_interval', '10s', 'static_configs', [{'targets': ['localhost:8095']}]]}]

with open(r'/home/yaniver/CICD/dockprom/prometheus/prometheus.yml', 'w') as file:
    documents = yaml.dump(dict_file, file)