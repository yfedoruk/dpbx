#!bash

#sudo vi /etc/hosts
echo 127.0.0.1  loc.inmyvac.com >> /etc/hosts

#sudo vi /etc/apache2/sites-available/loc.inmyvac.com#.conf

printf "
<VirtualHost *:80>\r
        ServerAdmin webmaster@localhost\r
        DocumentRoot /home/slava/www/loc.inmyvac.com\r
    ServerName loc.inmyvac.com\r
    ServerAlias www.loc.inmyvac.com\r
        <Directory />\r
                Options FollowSymLinks\r
                AllowOverride None\r
        </Directory>\r
        <Directory /home/slava/www/loc.inmyvac.com/>\r
                Options Indexes FollowSymLinks MultiViews\r
                AllowOverride All\r
                Order allow,deny\r
                allow from all\r
                #Require all granted
        </Directory>\r
</VirtualHost>\r" > /etc/apache2/sites-available/loc.inmyvac.com

sudo a2ensite loc.inmyvac.com
sudo service apache2 reload

######### remove from site list #########
#vi /etc/hosts
#sudo rm /etc/apache2/sites-available/loc.inmyvac.com
#sudo a2dissite loc.inmyvac.com
#sudo service apache2 reload

## offtop ##
#enable/disable modules 
#sudo a2enmod dav
#sudo a2dismod dav
