FROM debian:buster
MAINTAINER jieke jiekechoo@126.com

RUN apt-get update && apt-get install -y \
      x11-apps \
      && rm -rf /usr/share/doc/* && \
      rm -rf /usr/share/info/* && \
      rm -rf /tmp/* && \
      rm -rf /var/tmp/*

RUN useradd -ms /bin/bash user
USER user
CMD xeyes
