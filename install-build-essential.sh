#!/bin/bash

apt-get update
apt-get upgrade

apt-get install -y git vim build-essential linux-headers-`uname -r` python-software-properties libpcre3-dev

apt-get install -y wget tree lynx dos2unix mc imagemagick mercurial



