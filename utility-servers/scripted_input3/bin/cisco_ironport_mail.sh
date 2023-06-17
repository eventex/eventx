#!/bin/bash

input01="/opt/splunk/etc/apps/scripted_input3/logs/modified/cisco_ironport_mail.log"

while IFS= read -r line
do
  sleep 5
  printf '%s %s\n' "$(date +"%a %b %d %H:%M:%S %Y")" "$line" >> /opt/splunk/etc/apps/scripted_input3/logs/logs/cisco_ironport_mail.log
done < "$input01"

