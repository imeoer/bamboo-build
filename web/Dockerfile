FROM dockerfile/ubuntu
MAINTAINER "imeoer" <imeoer@gmail.com>

# Install Nginx
RUN apt-get update -y
RUN apt-get install nginx -y
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf

EXPOSE 80
