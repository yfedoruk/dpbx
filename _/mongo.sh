#!/bin/sh

#https://docs.mongodb.org/manual/tutorial/install-mongodb-on-ubuntu/
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu $(lsb_release -cs)/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
apt-get update
apt-get install -y mongodb-org
service mongod restart

#http://php.net/manual/en/mongodb.installation.pecl.php
#pecl install mongodb
#echo 'extension=mongodb.so' > /etc/php5/apache2/conf.d/mongo.ini
#service apache2 reload


#deprecated, but still used (as class Mongo in code)
pecl install mongo
apt-get install libsasl2-dev
echo 'extension=mongo.so' > /etc/php5/apache2/conf.d/mongo.ini

#for php5.6
#http://tecadmin.net/setup-mongodb-php5-apache2-ubuntu/
sudo apt-get install php5.6-mongo
