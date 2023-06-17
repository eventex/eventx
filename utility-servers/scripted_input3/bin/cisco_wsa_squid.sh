#!/bin/bash


input01="/opt/splunk/etc/apps/scripted_input3/logs/modified/cisco_wsa_squid.log"


while IFS= read -r line
do
  sleep 5
  printf '%s %s\n' "[$(date +"%d/%b%Y:%H:%M:%S")]" "$line" >> /app/logs/cisco_wsa_squid.log
done < "$input01"

