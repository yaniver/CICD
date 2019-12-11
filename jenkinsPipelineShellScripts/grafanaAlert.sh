#!/bin/bash

alertExist="$(curl  -H "Authorization: Basic YWRtaW46YWRtaW4=" http://localhost:3000/api/alerts | grep -Eoi "name\":\"Container CPU Usage alert\",\"state\":\"Alerting\"")"
if [[ "$alertExist" == "" ]]
then
        printf "\n\n"
	echo "No critical Alert exist for stopping JMeter load scenario"
        printf "\n"
else
	exit 1
fi
