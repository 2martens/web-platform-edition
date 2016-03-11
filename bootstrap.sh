#!/usr/bin/env bash
# used for vagrant setup

aptitude update
aptitude install -y apache2 php5 mongodb
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi
cd /etc/apache2/sites-available
sudo sed -i -- 's#/var/www/html#/var/www/web#g' 000-default.conf
sudo service apache2 restart

timezone="Europe/Berlin"
sudo sed -i "s#^;date.timezone =.*#date.timezone = ${timezone}#" /etc/php5/apache2/php.ini
sudo service apache2 restart

sudo mkdir /data
sudo chmod 777 /data
mkdir /data/db/

mongorestore /var/www/dump
