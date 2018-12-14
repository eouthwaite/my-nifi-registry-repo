#!/usr/bin/env bash
/opt/nifi-1.8.0/bin/nifi.sh start
tail -f /opt/nifi-1.8.0/logs/*[pr].log
