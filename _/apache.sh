sudo apt-get install apache2 apache2-doc apache2-utils libapache2-mod-php5 && a2enmod rewrite && service apache2 restart

#sudo apt-get install apache2-mpm-prefork
sudo apt-get install libapache2-mod-php7.0
#test
apache2ctl -M | grep  rewrite_module

