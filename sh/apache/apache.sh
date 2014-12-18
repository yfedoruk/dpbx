#install
sudo apt-get install apache2 apache2-doc apache2-mpm-prefork apache2-utils libexpat1 ssl-cert
sudo service apache2 reload


#config 
/etc/apache2/apache2.conf
sudo echo ServerName localhost >> /etc/apache2/apache2.conf

sudo a2enmod php5

#logs
tail -f  /var/log/apache2/error.log

#remove
sudo apt-get remove apache2*
sudo apt-get autoremove
sudo apt-get purge apache2 #rm configs

#downgrade errors:
go to /etc/apache2/mods-enabled/ and /etc/apache2/sites-enabled and delete all broken links

#errors "download php files" - install php :) and enable it!
sudo apt-get install libapache2-mod-php5
sudo a2enmod php5
sudo service apache2 restart

