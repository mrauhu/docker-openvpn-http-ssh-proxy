FROM alpine:latest

RUN apk --no-cache add openvpn

VOLUME /opt/openvpn
WORKDIR /opt/openvpn

COPY run.sh /usr/local/bin
RUN chmod +x /usr/local/bin/run.sh

CMD ["run.sh"]
