#!/bin/bash

alertExist="$(curl  -H "Authorization: Basic YWRtaW46YWRtaW4=" http://localhost:3000/api/alerts | grep -Eoi "name\":\"Container CPU Usage alert\",\"state\":\"Alerting\"")"
if [[ "$alertExist" == "" ]]
then
	exit 1
else
        printf "\n\n"
	echo "No critical Alert exist for stopping JMeter load scenario"
        printf "\n"
	exit 0
fi
