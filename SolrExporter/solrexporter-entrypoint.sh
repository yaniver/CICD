#!/bin/bash

./bin/solr-exporter -p 8095 -b http://10.16.251.22:8983/solr -f ./conf/solr-exporter-config.xml -n 16
