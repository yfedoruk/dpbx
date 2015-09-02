#!bash
mkdir /home/slava/www/$1
echo 127.0.0.1  $1 >> /etc/hosts
printf "<VirtualHost *:80>\r
        ServerAdmin webmaster@localhost\r
        DocumentRoot /home/slava/www/$1\r
    ServerName $1\r
    #ServerAlias www.$1\r
        <Directory />\r
                Options FollowSymLinks\r
                AllowOverride None\r
        </Directory>\r
        <Directory /home/slava/www/$1/>\r
                Options Indexes FollowSymLinks MultiViews\r
                AllowOverride All\r
                Order allow,deny\r
                allow from all\r
                Require all granted\r
        </Directory>\r
</VirtualHost>\r


<VirtualHost *:443>\r
        ServerAdmin webmaster@localhost\r
        DocumentRoot /home/slava/www/$1\r
    ServerName $1\r
    #ServerAlias www.$1\r
    SSLEngine on\r
        #optionally add after: SSLEngine on\r
        SSLProtocol all -SSLv2\r
        #to deny old protocol: SSLv2.\r
    SSLCertificateFile    /etc/ssl/certs/server.crt\r
    SSLCertificateKeyFile /etc/ssl/private/server.key\r
        <Directory />\r
                Options FollowSymLinks\r
                AllowOverride None\r
        </Directory>\r
        <Directory /home/slava/www/$1/>\r
                Options Indexes FollowSymLinks MultiViews\r
                AllowOverride All\r
                Order allow,deny\r
                allow from all\r
                Require all granted\r
        </Directory>
</VirtualHost>
" > /etc/apache2/sites-available/$1.conf

#for ServerAlias add host 127.0.0.1 to /etc/hosts too.

sudo a2ensite $1
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

# "Require all granted" only for apache >= 2.4