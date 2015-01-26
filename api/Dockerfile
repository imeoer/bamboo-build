FROM dockerfile/ubuntu
MAINTAINER "imeoer" <imeoer@gmail.com>

# Install Golang
ENV GOPATH /data/golang
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/local/go/bin:
RUN apt-get update -y
RUN apt-get install bzr -y
RUN mkdir -p $GOPATH
RUN curl -s https://storage.googleapis.com/golang/go1.4.linux-amd64.tar.gz | tar -v -C /usr/local/ -xz
RUN ls -l
RUN go get -u github.com/imeoer/bamboo-api

WORKDIR /data/golang/src/github.com/imeoer/bamboo-api
CMD /data/golang/bin/bamboo-api

EXPOSE 8888
