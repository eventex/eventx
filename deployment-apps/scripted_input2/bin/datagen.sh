#!/bin/bash


input1="/opt/splunkforwarder/etc/apps/scripted_input2/logs/access.log"
input2="/opt/splunkforwarder/etc/apps/scripted_input2/logs/cisco_wsa_squid.log"
input3="/opt/splunkforwarder/etc/apps/scripted_input2/logs/secure.log"


while IFS= read -r line
do 
  printf '%s %s\n' "${RANDOM:0:2}.${RANDOM:0:2}.${RANDOM:0:2}.${RANDOM:0:2} - -[$(date)]" "$line" >> /app/logs/access.log
done < "$input1"


while IFS= read -r line
do
  printf '%s %s\n' "[$(date +"%d/%b/%Y %H:%M:%S")]" "$line" >> /app/logs/cisco_aws_squid.log
done < "$input2"

while IFS= read -r line
do
  printf '%s %s\n' "$(date +"%a %b %d %Y %H:%M:%S")" "$line" >> /app/logs/secure.log
done < "$input3"
