#!/bin/sh

set -e # fail fast
set -x # print commands

git clone resource-tutorial source
git clone resource-gist dest

rm -rf dest/*
cp -r source/* dest/

cd dest
mvn clean package

cp -r target/ ../
rm -rf *
cp -r ../target .

git config --global user.email "DeenaDhayalan.B@cognizant.com"
git config --global user.name "DeenaDhayalanB"

git add .
git commit -m "packaged output"
git push -u DeenaDhayalanB:Deepak123
