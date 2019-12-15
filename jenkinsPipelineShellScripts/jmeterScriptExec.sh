#!/bin/bash

echo "Deploy JMeter: ${date}"
JENKINS_HOME="/var/lib/jenkins"
cd ${JENKINS_HOME}/CICD/JMeter
sudo docker build -t jmeter .
source ./launchJMeterDockerRun.sh
