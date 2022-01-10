FROM alpine:latest

RUN apk --no-cache add privoxy gettext

WORKDIR /app
VOLUME /etc/privoxy
EXPOSE 80

COPY run.sh /usr/local/bin
RUN chmod +x /usr/local/bin/run.sh

CMD ["run.sh"]
