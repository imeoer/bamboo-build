FROM ubuntu:14.04
MAINTAINER "imeoer" <imeoer@gmail.com>

# Install MongoDB
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
RUN echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | tee /etc/apt/sources.list.d/mongodb.list
RUN apt-get update -y
RUN apt-get install mongodb-org -y
RUN mkdir -p /data/db

# Install Supervisor
ADD supervisord.conf /etc/
RUN apt-get install python-pip -y
RUN pip install supervisor --pre
RUN supervisord

# Start
RUN supervisorctl start all

# Clean Install Cache
RUN apt-get clean

# Expose Port For MongoDB
EXPOSE 27017
