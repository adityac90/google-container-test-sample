FROM busybox
LABEL maintainer="aditya"

WORKDIR /root

ENV STAGE "dev"

COPY ./docker-entrypoint.sh .

RUN date > /tmp/date.log

ENTRYPOINT ["sh", "./docker-entrypoint.sh"]
