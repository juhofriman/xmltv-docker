FROM ubuntu

WORKDIR /opt/xmltv

RUN apt-get update
RUN apt-get install -y xmltv

COPY docker/docker-entrypoint.sh docker-entrypoint.sh

RUN chmod +x docker-entrypoint.sh
CMD ["bash", "-c", "/opt/xmltv/docker-entrypoint.sh"]
