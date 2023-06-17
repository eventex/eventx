#!/bin/bash


input01="/opt/splunk/etc/apps/scripted_input3/logs/modified/history_access.log"

while IFS= read -r line
do
  sleep 5
  printf '%s %s\n' "[$(date +"%d/%b/%Y %H:%M:%S")]" "$line" >> /opt/splunk/etc/apps/scripted_input3/logs/logs/history_access.log
done < "$input01"

