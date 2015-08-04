<VirtualHost *:443>
        ServerAdmin webmaster@localhost
        DocumentRoot /home/slava/www/loc.inmyvac.com
    ServerName loc.inmyvac.com
    ServerAlias vac.com
    SSLEngine on
        #optionally add after: SSLEngine on
        SSLProtocol all -SSLv2
        #to deny old protocol: SSLv2.
    #write down right paths
    SSLCertificateFile    /etc/ssl/certs/server.crt
    SSLCertificateKeyFile /etc/ssl/private/server.key
        <Directory />
                Options FollowSymLinks
                AllowOverride None
        </Directory>
        <Directory /home/slava/www/loc.inmyvac.com/>
                Options Indexes FollowSymLinks MultiViews
                AllowOverride All
                #Order allow,deny
                #allow from all
                Require all granted
        </Directory>
</VirtualHost>

<VirtualHost *:80>
  SSLEngine off
        ServerAdmin webmaster@localhost
        DocumentRoot /home/slava/www/loc.inmyvac.com
    ServerName loc.inmyvac.com
        <Directory />
                Options FollowSymLinks
                AllowOverride None
        </Directory>
        <Directory /home/slava/www/loc.inmyvac.com/>
                Options Indexes FollowSymLinks MultiViews
                AllowOverride All
                #Order allow,deny
                #allow from all
                Require all granted
        </Directory>
</VirtualHost>
