#!/bin/bash

cd /opt/xmltv
mkdir data
echo "Hang tight... generating..."
tv_grab_fi --config-file /opt/xmltv/tv_grab_fi.conf --days 1 --quiet > data/tvdata.xml
cat data/tvdata.xml | grep -v "DOCTYPE" > /data/tvdata.xml
echo "Done!"
cd data
python -m SimpleHTTPServer 8000
echo "Serving generated xml from port 8000"
