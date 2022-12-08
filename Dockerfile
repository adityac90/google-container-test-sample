FROM busybox
LABEL maintainer="aditya"

WORKDIR /root

ENV STAGE "dev"

COPY ./docker-entrypoint.sh /root/

RUN date > /tmp/date.log

ENTRYPOINT ["sh", "./docker-entrypoint.sh"]
