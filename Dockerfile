FROM polinux/supervisor:alpine

RUN \
  apk add --update \
    squid && \
  rm -rf /var/cache/apk/* && \
  mkdir -p /run/apache2/

ADD container-files /

EXPOSE 3128