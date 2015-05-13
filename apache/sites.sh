#!bash

#sudo vi /etc/hosts
echo 127.0.0.1  yii.loc >> /etc/hosts

#sudo vi /etc/apache2/sites-available/yii.loc#.conf

printf "
<VirtualHost *:80>\r
        ServerAdmin webmaster@localhost\r
        DocumentRoot /home/slava/www/yii.loc\r
    ServerName yii.loc\r
    ServerAlias www.yii.loc\r
        <Directory />\r
                Options FollowSymLinks\r
                AllowOverride None\r
        </Directory>\r
        <Directory /home/slava/www/yii.loc/>\r
                Options Indexes FollowSymLinks MultiViews\r
                AllowOverride All\r
                Order allow,deny\r
                allow from all\r
                #Require all granted
        </Directory>\r
</VirtualHost>\r" > /etc/apache2/sites-available/yii.loc.conf

#for ServerAlias add host 127.0.0.1 to /etc/hosts too.

sudo a2ensite yii.loc
sudo service apache2 reload

######### remove from site list #########
#vi /etc/hosts
#sudo rm /etc/apache2/sites-available/yii.loc
#sudo a2dissite yii.loc
#sudo service apache2 reload

## offtop ##
#enable/disable modules 
#sudo a2enmod dav
#sudo a2dismod dav