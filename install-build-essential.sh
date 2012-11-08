#!/bin/bash

apt-get update
apt-get upgrade

apt-get install -y git vim build-essential linux-headers-`uname -r`

apt-get install -y wget tree lynx dos2unix mc imagemagick mercurial



