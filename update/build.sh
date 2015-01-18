#!/bin/bash

# clean dir
# rm /data/build -R *
mkdir -p /data/build/web
mkdir -p /data/build/api

# update web
cd /data
git clone https://github.com/inspire-0905/bamboo-web.git
cd bamboo-web
git pull --rebase
npm install
gulp release
mv release/* /data/build/web

# update api
go get -u github.com/imeoer/bamboo-api
mv /data/golang/bin/bamboo-api /data/build/api
chown www-data:www-data /data/ -R *
chmod 0755 /data/ -R *
