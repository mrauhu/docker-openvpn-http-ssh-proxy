FROM alpine:latest

RUN apk --no-cache add openssh
RUN echo "root:root" | chpasswd

VOLUME /root/.ssh
VOLUME /etc/ssh

COPY run.sh /usr/local/bin

EXPOSE 22

CMD ["run.sh"]
