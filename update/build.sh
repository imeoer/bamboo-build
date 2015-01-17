#!/bin/bash

# clean dir
rm /root/build -R *
mkdir -p /root/build/web
mkdir -p /root/build/api

# update web
cd bamboo-web
git pull --rebase
npm install
gulp release
mv release/* /root/build/web

# update api
go get -u github.com/imeoer/bamboo-api
mv /root/golang/bin/bamboo-api /root/build/api
