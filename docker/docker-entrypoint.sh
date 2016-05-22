#!/bin/bash

cd /opt/xmltv
mkdir data

/opt/xmltv/tv-grab-wrapper.sh >> /var/log/tvgrab.log

crontab /etc/crontab
cron -f
