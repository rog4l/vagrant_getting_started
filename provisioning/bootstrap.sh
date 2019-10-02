#!/usr/bin/env bash

apt-get update
apt-get install -y apache2 python-software-properties
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi
apt-get update