FROM ubuntu
MAINTAINER "imeoer" <imeoer@gmail.com>

# Install Redis
RUN apt-get update -y
RUN apt-get install wget software-properties-common build-essential -y
RUN wget http://download.redis.io/redis-stable.tar.gz && tar xvzf redis-stable.tar.gz
RUN cd redis-stable && make && make install
RUN cp -f src/redis-sentinel /usr/local/bin
RUN rm -rf redis-stable*
