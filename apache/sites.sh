#!bash
dir="/home/slava/www/$2";
if [ ! -d "${dir}" ]; then
	mkdir /home/slava/www/$2
fi
echo 127.0.0.1  $1 >> /etc/hosts
printf "<VirtualHost *:80>\r
        ServerAdmin webmaster@localhost\r
        DocumentRoot /home/slava/www/$2\r
    ServerName $1\r
    ServerAlias www.$1\r
        <Directory />\r
                Options FollowSymLinks\r
                AllowOverride None\r
				Require all granted\r
        </Directory>\r
        <Directory /home/slava/www/$2/>\r
				RewriteEngine on\r
				# If a directory or a file exists, use the request directly\r
				RewriteCond {REQUEST_FILENAME} !-f\r
				RewriteCond {REQUEST_FILENAME} !-d\r
				# Otherwise forward the request to index.php\r
				RewriteRule . index.php\r
                Options Indexes FollowSymLinks MultiViews\r
                AllowOverride All\r
                Order allow,deny\r
                allow from all\r
                Require all granted\r
        </Directory>\r
</VirtualHost>\r
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
