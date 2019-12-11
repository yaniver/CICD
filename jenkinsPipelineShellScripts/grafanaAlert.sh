#!/bin/bash

alertExist="$(curl  -H "Authorization: Basic YWRtaW46YWRtaW4=" http://localhost:3000/api/alerts | grep -Eoi "name\":\"Container CPU Usage alert\",\"state\":\"Alerting\"")"

for i in {1..99999999}
	do
	if [[ "$alertExist" == "" ]]
	then
		printf "\n\n"
		echo "No critical Alert exist for stopping JMeter load scenario"
		printf "\n"
	else
		echo "Critical Alert exist, fail stage"
		exit 1
		break
	fi
	sleep 1m
done
