#!/bin/sh

set -e # fail fast
set -x # print commands

git clone git-repo-output updated-gist

cd updated-gist
echo $(date) > bumpme

git config --global user.email "DeenaDhayalanB@cognizant.com"
git config --global user.name "Deepak123"

git add .
git commit -m "Bumped date"
