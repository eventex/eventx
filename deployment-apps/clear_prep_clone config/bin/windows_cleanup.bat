@echo off

host=%COMPUTERNAME%

echo %date% $COMPUTERNAME splunk forwarder clean-up started

echo Script to delete forwarder guid

del /f /q "c:\Program Files\SplunkUniversalForwarder\etc\instance.cfg"

NET STOP SplunkForwarder
timeout 5 /nobreak
NET START SplunkForwarder
