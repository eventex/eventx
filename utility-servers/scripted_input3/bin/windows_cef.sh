#!/bin/bash

input01="/opt/splunk/etc/apps/scripted_input3/logs/modified/windows_cef.log"

while IFS= read -r line
do
  sleep 5
  printf '%s %s\n' "10.99.92.114" "start=$(date +"%s.%3N")" "$line" >> /opt/splunk/etc/apps/scripted_input3/logs/logs/windows_cef.log
done < "$input01"

