#!/bin/bash

input01="/opt/splunk/etc/apps/scripted_input3/logs/modified/cisco_firewall.log"

while IFS= read -r line
do
  sleep 5	
  printf '%s %s\n' "$(date +"%b %d %Y %H:%M:%S")" "$line" >> /opt/splunk/etc/apps/scripted_input3/logs/logs/cisco_firewall.log
done < "$input01"
