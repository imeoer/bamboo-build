FROM ubuntu:14.04
MAINTAINER "imeoer" <imeoer@gmail.com>

# Install MongoDB
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
RUN echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | tee /etc/apt/sources.list.d/mongodb.list
RUN apt-get update -y
RUN apt-get install mongodb-org -y
VOLUME /data/db

# Install Golang
ENV HOME /root
ENV GOPATH /root/go
ENV PATH $GOPATH/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games
RUN mkdir -p $GOPATH
RUN apt-get install curl -y
RUN curl -s https://storage.googleapis.com/golang/go1.4.linux-amd64.tar.gz | tar -v -C /usr/local/ -xz

# Install Nodejs
RUN apt-get install python python-dev python-pip python-virtualenv -y
RUN apt-get install git-core build-essential openssl libssl-dev pkg-config -y
RUN git clone https://github.com/joyent/node.git
RUN cd node && ./configure && make && make install

# Install Nginx
RUN apt-get install nginx -y

# Install Redis
RUN curl -s http://download.redis.io/releases/redis-2.8.19.tar.gz | tar -xz
RUN cd redis-2.8.19 && make

# Install Supervisor
ADD supervisord.conf /etc/
RUN pip install supervisor --pre

# Run
CMD supervisord

# Clean Install Cache
RUN rm -rf /var/lib/apt/lists/*

# Expose Port For MongoDB
EXPOSE 27017
