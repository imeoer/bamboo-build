FROM dockerfile/ubuntu
MAINTAINER "imeoer" <imeoer@gmail.com>

# Install MongoDB
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
RUN echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | tee /etc/apt/sources.list.d/mongodb.list
RUN apt-get update -y
RUN apt-get install mongodb-org -y
VOLUME /data/db

EXPOSE 27017
