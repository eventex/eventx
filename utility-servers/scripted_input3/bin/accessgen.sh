#!/bin/bash

input01="/opt/splunk/etc/apps/scripted_input3/logs/modified/access.log"


while IFS= read -r line
do
 sleep 5
 printf '%s %s\n' "${RANDOM:0:2}.${RANDOM:0:2}.${RANDOM:0:2}.${RANDOM:0:2} - -[$(date)]" "$line" >> /opt/splunk/etc/apps/scripted_input3/logs/logs/access.log
done < "$input01"

