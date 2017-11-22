#!/bin/sh

set -e # fail fast
set -x # print commands

git clone resource-tutorial source
git clone resource-gist dest

cd dest
ls
