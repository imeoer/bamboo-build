FROM dockerfile/ubuntu
MAINTAINER "imeoer" <imeoer@gmail.com>

# Install Nodejs
RUN apt-get install python python-dev python-pip python-virtualenv -y
RUN apt-get install openssl libssl-dev pkg-config -y
RUN git clone https://github.com/joyent/node.git
RUN cd node && ./configure && make && make install
