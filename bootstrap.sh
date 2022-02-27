#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive
add-apt-repository -y ppa:deadsnakes/ppa
apt-get update
apt-get install -y python3.9 python3.9-distutils python3-pip
update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 1
update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.9 2
pip3 install --upgrade setuptools pip distlib
pip3 install -r /vagrant/requirements.txt
