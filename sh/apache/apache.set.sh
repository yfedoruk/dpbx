sudo vi /etc/apache2/sites-enabled/000-default.conf
#change default dirs on your


#uncomment
RewriteEngine On
...


#add Require all granted
<Directory "your directory here">
   Order allow,deny
   Allow from all
   # New directive needed in Apache 2.4.3: 
   Require all granted
</Directory>


# also check or is installed
sudo apt-get install libapache2-mod-php5
apt-get install php-pear php5-dev

#uncomment and set in php.ini date.timezone (http://id1.php.net/manual/en/datetime.configuration.php#ini.date.timezone)
date.timezone = Europe/Kiev
##echo date.timezone = Europe/Kiev >> /etc/php5/apache2/php.ini


