#!/bin/bash

input01="/opt/splunkforwarder/etc/apps/scripted_input2/logs/modified/access.log"
input02="/opt/splunkforwarder/etc/apps/scripted_input2/logs/modified/Apache.txt"
input03="/opt/splunkforwarder/etc/apps/scripted_input2/logs/modified/cisco_firewall.log"
input04="/opt/splunkforwarder/etc/apps/scripted_input2/logs/modified/cisco_ironport_mail.log"
input05="/opt/splunkforwarder/etc/apps/scripted_input2/logs/modified/cisco_ironport_web.log"
input05="/opt/splunkforwarder/etc/apps/scripted_input2/logs/modified/cisco.log"
input06="/opt/splunkforwarder/etc/apps/scripted_input2/logs/modified/cisco_wsa_squid.log"
input07="/opt/splunkforwarder/etc/apps/scripted_input2/logs/modified/history_access.log"
input08="/opt/splunkforwarder/etc/apps/scripted_input2/logs/modified/iis_vmail1.log"
input09="/opt/splunkforwarder/etc/apps/scripted_input2/logs/modified/json.log"
input10="/opt/splunkforwarder/etc/apps/scripted_input2/logs/modified/maillog.log"
input11="/opt/splunkforwarder/etc/apps/scripted_input2/logs/modified/Netgear.log"
input12="/opt/splunkforwarder/etc/apps/scripted_input2/logs/modified/Paloalto.log"
input13="/opt/splunkforwarder/etc/apps/scripted_input2/logs/modified/people.csv"
input14="/opt/splunkforwarder/etc/apps/scripted_input2/logs/modified/sales_entries.log"
input15="/opt/splunkforwarder/etc/apps/scripted_input2/logs/modified/secure.log"
input16="/opt/splunkforwarder/etc/apps/scripted_input2/logs/modified/trade_entries.log"
input17="/opt/splunkforwarder/etc/apps/scripted_input2/logs/modified/vendor_sales.log"
input18="/opt/splunkforwarder/etc/apps/scripted_input2/logs/modified/web_access.log"
input19="/opt/splunkforwarder/etc/apps/scripted_input2/logs/modified/WinAuthentication_Security.log"
input20="/opt/splunkforwarder/etc/apps/scripted_input2/logs/modified/windows_cef.log"


while IFS= read -r line
do
  sleep 5	
  printf '%s %s\n' "${RANDOM:0:2}.${RANDOM:0:2}.${RANDOM:0:2}.${RANDOM:0:2} - -[$(date)]" "$line" >> /app/logs/access.log
done < "$input01"

while IFS= read -r line
do
  sleep 5
  printf '%s %s\n' "[$(date + "%a %b %d %H:%M:%S %Y")]" "$line" >> /app/logs/Apache.log
done < "$input02"

while IFS= read -r line
do
  sleep 5	
  printf '%s %s\n' "$(date +"%b %d %Y %H:%M:%S")" "$line" >> /app/logs/cisco_firewall.log
done < "$input03"

while IFS= read -r line
do
  sleep 5
  printf '%s %s\n' "$(date +"%a %b %d %H:%M:%S %Y")" "$line" >> /app/logs/cisco_ironport_mail.log
done < "$input04"

while IFS= read -r line
do
  sleep 5
  printf '%s %s\n' "$(date +"%s.%3N")" "$line" >> /app/logs/cisco_ironport_web.log
done < "$input05"

while IFS= read -r line
do
  sleep 5
  printf '%s %s\n' "$(date +"%b %d %Y %H:%M:%S:")" "$line" >> /app/logs/cisco.log
done < "$input06"

while IFS= read -r line
do
  sleep 5
  printf '%s %s\n' "[$(date +"%d/%b%Y:%H:%M:%S")]" "$line" >> /app/logs/cisco_wsa_squid.log
done < "$input07"

#while IFS= read -r line
#do
#  sleep 5
#  printf '%s %s\n' "[$(date +"%d/%b/%Y %H:%M:%S")]" "$line" >> /app/logs/history_access.log
#done < "$input08"

while IFS= read -r line
do
  sleep 5
  printf '%s %s\n' "[$(date +"%Y-%m-%d %H:%M:%S")]" "$line" >> /app/logs/iis_vmail1.log
done < "$input09"

#while IFS= read -r line
#do
#  sleep 5
#  printf '%s %s\n' "[$(date +"%d/%b/%Y %H:%M:%S")]" "$line" >> /app/logs/json.log
#done < "$input10"

while IFS= read -r line
do
  sleep 5
  printf '%s %s\n' "[$(date +"%b %d %H:%M:%S %Y")]" "$line" >> /app/logs/maillog.log
done < "$input11"

while IFS= read -r line
do
  sleep 5
  printf '%s %s\n' "$(date +"%Y-%m-%d %H:%M:%S")" "$line" >> /app/logs/Netgear.log
done < "$input12"

while IFS= read -r line
do
  sleep 5
  printf '%s %s\n' "${RANDOM:0:2}.${RANDOM:0:2}.${RANDOM:0:2}.${RANDOM:0:2}" "$line" >> /app/logs/Paloalto.log
done < "$input13"

#while IFS= read -r line
#do
#  sleep 5
#  printf '%s %s\n' "[$(date +"%d/%b/%Y %H:%M:%S")]" "$line" >> /app/logs/people.csv
#done < "$input14"

while IFS= read -r line
do
  sleep 5
  printf '%s %s\n' "$(date +"%a %b %d %Y %H:%M:%S")" "$line" >> /app/logs/sales_entries.log
done < "$input15"

while IFS= read -r line
do
  sleep 5
  printf '%s %s\n' "$(date +"%a %b %d %Y %H:%M:%S"]" "$line" >> /app/logs/secure.log
done < "$input16"

while IFS= read -r line
do
  sleep 5
  printf '%s %s\n' "$(date +"%a %b %d %H:%M:%S %Y")" "$line" >> /app/logs/trade_entries.log
done < "$input17"

while IFS= read -r line
do
  sleep 5
  printf '%s %s\n' "[$(date +"%d/%b/%Y:%H:%M:%S")]" "$line" >> /app/logs/vendor_sales.log
done < "$input18"

while IFS= read -r line
do
  sleep 5
  printf '%s %s\n' "${RANDOM:0:2}.${RANDOM:0:2}.${RANDOM:0:2}.${RANDOM:0:2} - -[$(date)]" "$line" >> /app/logs/web_access.log
done < "$input19"

#while IFS= read -r line
#do
#  sleep 5
#  printf '%s %s\n' "$(date +"%a %b %d %Y %H:%M:%S")" "$line" >> /app/logs/WinAuthentication_Security.log
#done < "$input20"

while IFS= read -r line
do
  sleep 5
  printf '%s %s\n' "10.99.92.114" "start=$(date +"%s.%3N")" "$line" >> /app/logs/windows_cef.log"
done < "$input21"
