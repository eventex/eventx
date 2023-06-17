#!/bin/bash

input01="/opt/splunk/etc/apps/scripted_input3/logs/modified/cisco_ironport_web.log"


while IFS= read -r line
do
  sleep 5
  printf '%s %s\n' "$(date +"%s.%3N")" "$line" >> /app/logs/cisco_ironport_web.log
done < "$input01"

