#!/bin/bash

./bin/solr-exporter -p 8095 -z 10.16.251.7:2181 -f ./conf/solr-exporter-config.xml -n 16
