#!/bin/bash

set -ex

sudo bash -c '
cd "/tmp";
export HOME="/home/ubuntu";
source ~/.circlerc;
if [ "XfunctionX" == "X$(type -t deactivate)X" ]; then deactivate; fi
pyenv global system
pip install https://s3.amazonaws.com/circle-support-bucket/circle-sds-support-0.8.1.tar.gz
pyenv rehash; 
create_application_revision
'



