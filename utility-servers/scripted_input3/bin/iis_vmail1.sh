#!/bin/bash


input01="/opt/splunk/etc/apps/scripted_input3/logs/modified/iis_vmail1.log"


while IFS= read -r line
do
  sleep 5
  printf '%s %s\n' "[$(date +"%Y-%m-%d %H:%M:%S")]" "$line" >> /opt/splunk/etc/apps/scripted_input3/logs/logs/iis_vmail1.log
done < "$input01"

