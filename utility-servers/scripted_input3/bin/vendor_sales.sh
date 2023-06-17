#!/bin/bash

input01="/opt/splunk/etc/apps/scripted_input3/logs/modified/vendor_sales.log"


while IFS= read -r line
do
  sleep 5
  printf '%s %s\n' "[$(date +"%d/%b/%Y:%H:%M:%S")]" "$line" >> /opt/splunk/etc/apps/scripted_input3/logs/logs/vendor_sales.log
done < "$input01"

