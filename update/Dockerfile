FROM dockerfile/ubuntu
MAINTAINER "imeoer" <imeoer@gmail.com>

# Install Golang
ENV GOPATH /root/golang
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/local/go/bin:
RUN mkdir -p $GOPATH
RUN curl -s https://storage.googleapis.com/golang/go1.4.linux-amd64.tar.gz | tar -v -C /usr/local/ -xz

# Install Node.js
RUN git clone https://github.com/creationix/nvm.git /.nvm
RUN echo ". /.nvm/nvm.sh" >> /etc/bash.bashrc
RUN curl -sL https://deb.nodesource.com/setup | sudo bash -
RUN sudo apt-get install -y nodejs

# Build Web
RUN cd /root && git clone https://github.com/inspire-0905/bamboo-web.git
RUN npm install gulp -g
RUN cd bamboo-web && npm install && gulp release

# Build Bakcend
RUN go get -u github.com/imeoer/bamboo-api

# Create Build Script
RUN mkdir -p /root/build/web
RUN mkdir -p /root/build/api
RUN echo "cd /root/bamboo-web && git pull --rebase && go get -u github.com/imeoer/bamboo-api && mv /root/golang/bin/bamboo-api /root/build/api" > /root/build.sh
RUN chmod +x /root/build.sh
