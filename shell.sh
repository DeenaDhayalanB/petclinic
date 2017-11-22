#!/bin/sh

set -e # fail fast
set -x # print commands

git clone resource-tutorial updated-gist

cd updated-gist
mvn clean package

git config --global user.email "DeenaDhayalan.B@cognizant.com"
git config --global user.name "DeenaDhayalanB"

git add .
git commit -m "packaged output"
