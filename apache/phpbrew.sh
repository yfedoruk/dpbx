#fix errors

sudo apt -y install libbz2-dev libxml2-dev libmcrypt-dev libreadline-dev libxslt-dev apache2-dev



#https://github.com/phpbrew/phpbrew/wiki/Cookbook#apache2-support

sudo chmod oga+rw /usr/lib/apache2/modules
sudo chmod -R oga+rw /etc/apache2/

phpbrew --debug install --stdout 7.0 as 7.0-dev +default +intl +apxs2=/usr/bin/apxs2 +pgsql
phpbrew install 5.6 as 5.6-dev like 7.0-dev
phpbrew install 5.6 as 5.6-dev +default +intl +apxs2=/usr/bin/apxs2 +pgsql

sudo chmod og-w /usr/lib/apache2/modules
sudo chmod -R og-w /etc/apache2/

# maybe need reinstall apache
sudo apt purge apache2
sudo apt install apache2

sudo a2enmod rewrite

####
####
####

#sudo apt-get install libapache2-mod-fastcgi php-fpm
#sudo a2dismod fastcgi && sudo a2enmod fastcgi && apache2ctl configtest

## enable/disable
phpbrew ext enable/disable xdebug

#install extensions
phpbrew --debug ext install mongodb

#search extensions
phpbrew ext show php-pgsql

