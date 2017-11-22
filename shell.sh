#!/bin/sh

set -e # fail fast
set -x # print commands

git clone resource-tutorial source
git clone resource-gist dest

sudo rm -rf dest/*
sudo cp -r source/* dest/

cd dest
mvn clean package

git config --global user.email "DeenaDhayalan.B@cognizant.com"
git config --global user.name "DeenaDhayalanB"

git add .
git commit -m "packaged output"
