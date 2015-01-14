FROM ubuntu
MAINTAINER "imeoer" <imeoer@gmail.com>

# Install Golang
ENV HOME /root
ENV GOPATH /root/go
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/local/go/bin:
RUN mkdir -p $GOPATH
RUN apt-get install curl git-core -y
RUN curl -s https://storage.googleapis.com/golang/go1.4.linux-amd64.tar.gz | tar -v -C /usr/local/ -xz

# Build Bakcend
RUN go get -u github.com/imeoer/bamboo-api
