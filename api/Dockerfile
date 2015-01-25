FROM dockerfile/ubuntu
MAINTAINER "imeoer" <imeoer@gmail.com>

# Install Golang
ENV GOPATH /data/golang
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/local/go/bin:
RUN mkdir -p $GOPATH
RUN curl -s https://storage.googleapis.com/golang/go1.4.linux-amd64.tar.gz | tar -v -C /usr/local/ -xz
RUN go get -u github.com/imeoer/bamboo-api

WORKDIR /data/golang/bin
CMD ./bamboo-api

EXPOSE 8888
