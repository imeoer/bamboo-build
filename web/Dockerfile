FROM dockerfile/ubuntu
MAINTAINER "imeoer" <imeoer@gmail.com>

# Install Nodejs
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN add-apt-repository ppa:chris-lea/node.js -y
RUN apt-get update -y
RUN apt-get install nodejs-legacy npm -y
