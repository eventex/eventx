#!/bin/bash

input01="/opt/splunk/etc/apps/scripted_input3/logs/modified/cisco.log"

while IFS= read -r line
do
  sleep 5
  printf '%s %s\n' "$(date +"%b %d %Y %H:%M:%S:")" "$line" >> /app/logs/cisco.log
done < "$input01"

