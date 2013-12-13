# Redis based on ubuntu
#
# VERSION 0.2
FROM ubuntu
MAINTAINER Michael Weibel <michael.weibel+docker@gmail.com>

# make sure package repository is up to date
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
# upgrade eventually updated packages
RUN apt-get upgrade -y

# install redis-server
RUN apt-get install -y redis-server

# expose redis port
EXPOSE 6379

# start by default redis-server
ENTRYPOINT ["/usr/bin/redis-server"]
