FROM ubuntu
MAINTAINER "imeoer" <imeoer@gmail.com>

# Install Nodejs
RUN apt-get install python python-dev python-pip python-virtualenv -y
RUN apt-get install git-core build-essential openssl libssl-dev pkg-config -y
RUN git clone https://github.com/joyent/node.git
RUN cd node && ./configure && make && make install

# Build Frontend
RUN cd $HOME && git clone https://github.com/inspire-0905/bamboo-web.git
RUN npm install gulp -g
RUN cd $HOME/bamboo-web && npm install
