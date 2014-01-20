FROM ubuntu
MAINTAINER Tim Chen "me@timchen.com"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
RUN echo "deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen" | tee -a /etc/apt/sources.list.d/10gen.list
RUN apt-get update
RUN apt-get -y install mongodb-10gen
RUN mkdir -p "/data/db"

EXPOSE 27017

#CMD ["/usr/bin/mongod"]
