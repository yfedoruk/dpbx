apt install -y apache2 apache2-doc apache2-utils libapache2-mod-php && a2enmod rewrite && service apache2 restart

#sudo apt-get install apache2-mpm-prefork
apt install -y libapache2-mod-php7.0

echo 'ServerName localhost' >> /etc/apache2/apache2.conf
#test
sudo apt -y autoremove
apache2ctl -M | grep rewrite_module

