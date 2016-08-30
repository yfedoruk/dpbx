#!/bin/bash
sudo apt-get -y update
sudo apt-get -y install apache2


sudo apt-get -y install mysql-server php5-mysql

sudo apt-get -y install php5 libapache2-mod-php5

sudo apt-get -y install php5-curl
sudo apt-get -y install php5-imagick php5-imap
sudo apt-get install php5-sqlite		#need in yii apt-cache search php | grep sqlite
#extension=php_pdo_sqlite.dll
#extension=php_sqlite.dll

php5-cgi - server-side, HTML-embedded scripting language (CGI binary)
php5-cli - command-line interpreter for the php5 scripting language
php5-common - Common files for packages built from the php5 source
php5-curl - CURL module for php5
php5-dbg - Debug symbols for PHP5
php5-dev - Files for PHP5 module development

php-pear - for oauth anf other packages

php5-gd - GD module for php5
php5-imagick php5-imap -- for images

#install oauth. See OAuth.sh
