#!/bin/bash

input01="/opt/splunk/etc/apps/scripted_input3/logs/modified/Paloalto.log"

while IFS= read -r line
do
  sleep 5
  printf '%s %s\n' "${RANDOM:0:2}.${RANDOM:0:2}.${RANDOM:0:2}.${RANDOM:0:2}" "$line" >> /opt/splunk/etc/apps/scripted_input3/logs/logs/Paloalto.log
done < "$input01"

