#!/bin/bash

./bin/solr-exporter -p 8095 -z 10.16.250.247:9983 -f ./conf/solr-exporter-config.xml -n 16
