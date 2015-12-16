FROM ubuntu:wily
MAINTAINER Fabrizio Balliano <fabrizio@fabrizioballiano.com>
RUN apt-get update && apt-get install -y varnish vim
