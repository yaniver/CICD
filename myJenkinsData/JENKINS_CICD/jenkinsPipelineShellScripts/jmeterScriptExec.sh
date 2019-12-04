#!/bin/bash

cd ~/JENKINS_CICD/JMeter
sudo docker build -t jmeter .
source ./launchJMeterDockerRun.sh
