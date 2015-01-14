FROM ubuntu:14.04
MAINTAINER "imeoer" <imeoer@gmail.com>

# Install Redis
RUN apt-get install curl gcc g++ libc6-dev libc6 build-essential -y
RUN curl -s http://download.redis.io/releases/redis-2.8.19.tar.gz | tar -xz
RUN cd redis-2.8.19 && make
