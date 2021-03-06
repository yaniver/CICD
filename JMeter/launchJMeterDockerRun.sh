#!/bin/bash

JENKINS_HOME="/var/lib/jenkins"
export timestamp=$(date +%Y%m%d_%H%M%S)
export volume_path=${JENKINS_HOME}/CICD/JMeter
export jmeter_path=/mnt/jmeter
sudo docker run --name jmeter -p 8983:8983  \
--volume "${volume_path}":${jmeter_path} \
jmeter -n -Jcsv_staticParams=${jmeter_path}/static_parameters.txt \
-Jmy_csv=${jmeter_path}/collectionsList.txt \
-JThreads=5 \
-t ${jmeter_path}/SolrJ.jmx \
-l ${jmeter_path}/tmp/result_${timestamp}.jtl -j ${jmeter_path}/tmp/jmeter_${timestamp}.log
