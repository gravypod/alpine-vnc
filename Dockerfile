FROM alpine:3.5
MAINTAINER Joshua Katz

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
	apk --no-cache add x11vnc xvfb supervisor
ADD etc /etc

WORKDIR /root/
EXPOSE 5900
CMD ["/usr/bin/supervisord","-c","/etc/supervisord.conf"]
