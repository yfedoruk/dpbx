#!/bin/bash
sudo apt-get install mysql-server mysql-client libmysqlclient15-dev
sudo /etc/init.d/mysql restart
sudo apt-get install apache2 apache2-doc apache2-mpm-prefork apache2-utils libexpat1 ssl-cert
sudo apt-get install libapache2-mod-php5 php5 php5-common php5-curl php5-dev php5-gd php5-idn php-pear php5-imagick php5-imap php5-mcrypt php5-memcache php5-mhash php5-ming php5-mysql php5-pspell php5-recode php5-snmp php5-sqlite php5-tidy php5-xmlrpc php5-xsl

#libapache2-mod-ruby 
sudo apt-get install php5-json 
#php-xml php-mbstring php5-zip 
sudo apt-get install curl libcurl3 libcurl3-dev
#php-pdo
#sudo apt-get install libcurl4-openssl-dev

sudo /etc/init.d/apache2 force-reload
sudo service apache2 reload


#downgrade errors:
go to /etc/apache2/mods-enabled/ and /etc/apache2/sites-enabled and delete all broken links

#php.ini
display_errors = On

apt-get install php53*  #??
