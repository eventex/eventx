#!/bin/bash

input01="/opt/splunk/etc/apps/scripted_input3/logs/modified/sales_entries.log"

while IFS= read -r line
do
  sleep 5
  printf '%s %s\n' "$(date +"%a %b %d %Y %H:%M:%S")" "$line" >> /opt/splunk/etc/apps/scripted_input3/logs/logs/sales_entries.log
done < "$input01"

