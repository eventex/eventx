#!/bin/bash

input01="/opt/splunk/etc/apps/scripted_input3/logs/modified/mock_data_ip.json"
mdate="$(date +"%a %b %d %H:%M:%S %Y")"

while IFS= read -r line
do
  sleep 5
  echo "$line" | sed "s/date":""/date":"$mdate"/" >> /opt/splunk/etc/apps/scripted_input3/logs/logs/mock_data_ip.log
done < "$input01"

