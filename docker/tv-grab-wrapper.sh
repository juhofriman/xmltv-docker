#!/bin/bash

cd /opt/xmltv
echo "$(date): Grabbing new data"
tv_grab_fi --config-file /opt/xmltv/tv_grab_fi.conf --days 1 > /opt/xmltv/data/latest.xml
cat /opt/xmltv/data/latest.xml | grep -v "DOCTYPE" > /data/tvdata.xml
echo "$(date): Done $(wc -l /data/tvdata.xml)"
