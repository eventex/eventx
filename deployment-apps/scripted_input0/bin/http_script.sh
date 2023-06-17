#!/bin/bash

curl -k https://10.10.5.189:8088/services/collector -H 'Authorization: Splunk 2a5c76cc-765e-4242-892b-8e9656f41947' -d '{ "sourcetype": "_json", "event":"Hello, world!" }'

