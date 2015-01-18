FROM dockerfile/ubuntu
MAINTAINER "imeoer" <imeoer@gmail.com>

# Install Golang
ENV GOPATH /data/golang
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/local/go/bin:
RUN mkdir -p $GOPATH
RUN curl -s https://storage.googleapis.com/golang/go1.4.linux-amd64.tar.gz | tar -v -C /usr/local/ -xz

# Install Node.js
RUN git clone https://github.com/creationix/nvm.git /.nvm
RUN echo ". /.nvm/nvm.sh" >> /etc/bash.bashrc
RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN apt-get install -y nodejs
RUN npm install gulp -g

# Create Build Script
ADD build.sh /data/
ADD update.js /data/
RUN chmod +x /data/build.sh
RUN /data/build.sh
