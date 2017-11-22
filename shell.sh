#!/bin/sh

set -e # fail fast
set -x # print commands

git clone resource-tutorial updated-gist

cd updated-gist
mvn clean package

git add .
git commit -m "packaged output"
