FROM alpine:latest

RUN apk --no-cache add openvpn

VOLUME /opt/openvpn
WORKDIR /opt/openvpn

COPY run.sh /usr/local/bin

CMD ["run.sh"]
