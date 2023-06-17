#!/bin/bash

input01="/opt/splunk/etc/apps/scripted_input3/logs/modified/json.log"


while IFS= read -r line
do
  sleep 5
  printf '%s %s\n' "$line" >> /opt/splunk/etc/apps/scripted_input3/logs/logs/json.log
done < "$input01"


