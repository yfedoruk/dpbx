sudo apt-get install apache2 apache2-doc apache2-mpm-prefork apache2-utils libapache2-mod-php5 && a2enmod rewrite && service apache2 restart
#test
apache2ctl -M | grep  rewrite_module

