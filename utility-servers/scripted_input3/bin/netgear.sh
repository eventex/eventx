#!/bin/bash

input01="/opt/splunk/etc/apps/scripted_input3/logs/modified/Netgear.log"


while IFS= read -r line
do
  sleep 5
  printf '%s %s\n' "$(date +"%Y-%m-%d %H:%M:%S")" "$line" >> /opt/splunk/etc/apps/scripted_input3/logs/logs/Netgear.log
done < "$input01"

