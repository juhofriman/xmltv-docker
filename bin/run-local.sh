#! /bin/bash

docker stop xmltv
docker rm xmltv
docker run -v /data --name xmltv -d juhofriman/xmltv
