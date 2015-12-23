FROM ubuntu:wily
MAINTAINER Fabrizio Balliano <fabrizio@fabrizioballiano.com>

RUN apt-get update && apt-get install -y varnish vim
ADD ./start.sh /start.sh

ENV VCL_CONFIG      /etc/varnish/default.vcl
ENV CACHE_SIZE      256M
ENV VARNISHD_PARAMS -p default_ttl=3600 -p default_grace=3600

EXPOSE 80 6082

CMD chmod +x /start.sh && sync && /start.sh
