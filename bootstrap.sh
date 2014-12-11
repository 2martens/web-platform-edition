#!/usr/bin/env bash
# used for vagrant setup

apt-get update
apt-get install -y apache2 php5 mongodb
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi
