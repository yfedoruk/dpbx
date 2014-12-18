#!bash

sudo vi /etc/hosts
sudo vi /etc/apache2/sites-available/regform.loc

<VirtualHost *:80>
        ServerAdmin webmaster@localhost

        DocumentRoot /home/slava/www/regform.loc
    ServerName regform.loc
    ServerAlias www.regform.loc
        <Directory />
                Options FollowSymLinks
                AllowOverride None
        </Directory>
        <Directory /home/slava/www/regform.loc/>
            RewriteRule ^index\.php$ - [F]
            RewriteCond %{REQUEST_FILENAME} !-f
            RewriteRule . /index.php [L,QSA]
                Options Indexes FollowSymLinks MultiViews
                AllowOverride All
                Order allow,deny
                allow from all
        </Directory>
</VirtualHost>


sudo a2ensite regform.loc
sudo service apache2 reload


# enable mod_rewrite for index.php routing (note: config above must be AllowOverride All)

sudo a2enmod rewrite
sudo /etc/init.d/apache2 restart (sudo service apache2 restart)


# SSL sertificates
    #It appears the newer version of httpd has stricter SSL configuration rules. Now you must have SSLCertificateFile and SSLCertificateKeyFile options in your VirtualHost definitions, so they should look like this:
$ sudo vi /etc/apache2/sites-available/vac.loc
NameVirtualHost *:80
NameVirtualHost *:443
<VirtualHost *:80>
    ...
</VirtualHost>
<virtualhost *:443>
  ...
  SSLEngine on
  SSLCertificateFile /etc/pki/tls/certs/localhost.crt
  SSLCertificateKeyFile /etc/pki/tls/private/localhost.key
</virtualhost>

#redirect all queries on https (optionally config)
$ sudo  vi  /etc/apache2/sites-enabled/000-default
<VirtualHost *:80>
        ...
        RewriteEngine On
        RewriteCond %{HTTPS} off
        RewriteRule (.*) https://%{HTTP_HOST}%{REQUEST_URI}
</VirtualHost>
