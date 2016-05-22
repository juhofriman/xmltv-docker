#! /bin/bash

docker stop xmltv
docker rm xmltv
docker run -p 8000:8000 -v /data --name xmltv -d juhofriman/xmltv
