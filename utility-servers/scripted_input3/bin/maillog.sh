#!/bin/bash

input01="/opt/splunk/etc/apps/scripted_input3/logs/modified/maillog.log"


while IFS= read -r line
do
  sleep 5
  printf '%s %s\n' "[$(date +"%b %d %H:%M:%S %Y")]" "$line" >> /app/logs/maillog.log
done < "$input01"

