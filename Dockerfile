FROM ubuntu:wily
MAINTAINER Fabrizio Balliano <fabrizio@fabrizioballiano.com>
RUN apt-get update && apt-get install -y varnish vim
EXPOSE 80 6082
CMD ["varnishd", "-F", "-a", ":80", "-T", ":6082", "-f", "/etc/varnish/default.vcl", "-s", "malloc,256M"]
