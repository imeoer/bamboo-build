FROM dockerfile/ubuntu
MAINTAINER "imeoer" <imeoer@gmail.com>

# Install Redis
RUN curl -s http://download.redis.io/releases/redis-2.8.19.tar.gz | tar -xz
RUN cd redis-2.8.19 && make && make install
