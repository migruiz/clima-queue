FROM resin/raspberrypi3-debian
RUN [ "cross-build-start" ]



RUN apt-get update && \
apt-get install -yqq --no-install-recommends rabbitmq-server  && rm -rf /var/lib/apt/lists/*


COPY startup.sh  /tmp/startup.sh

RUN chmod +x /tmp/startup.sh

RUN [ "cross-build-end" ]  



EXPOSE 5672
EXPOSE 15672

ENTRYPOINT ["/tmp/startup.sh"]