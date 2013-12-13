FROM ubuntu
MAINTAINER Michael Weibel <michael.weibel+docker@gmail.com>

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y redis-server

EXPOSE 6379

ENTRYPOINT ["/usr/bin/redis-server"]
