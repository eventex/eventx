 #!/bin/bash
 
sudo -H  -u splunk bash -c '/opt/splunk/bin/splunk add oneshot /opt/splunk/etc/deployment-apps/scripted_input/logs* -index test -sourcetype test_log -auth admin:5503.Wknds!'
