#!/bin/bash

solrExpoExist=$(sudo docker ps -a -f name=solrexporter | grep solrexporter)
printf "\n\n"
if [[ "$solrExpoExist" == "" ]]
then        
	echo "solrexporter container doesn't exist"
else
	echo "Removing solrexporter container"
        sudo docker rm solrexporter -f
fi
printf "\n"

jmeterExist=$(sudo docker ps -a -f name=jmeter | grep jmeter)
printf "\n\n"
if [[ "$jmeterExist" == "" ]]
then        
	echo "jmeter container doesn't exist"
else
	echo "Removing jmeter container"
        sudo docker rm jmeter -f
fi
printf "\n"
