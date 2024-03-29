#Ubuntu 12.04 (https://help.ubuntu.com/12.04/serverguide/certificates-and-security.html)

#creating certificates  -des3 -- add password
openssl genrsa -des3 -out server.key 2048
openssl rsa -in server.key -out server.key.insecure
mv server.key server.key.secure
mv server.key.insecure server.key
openssl req -new -sha256 -key server.key -out server.csr
openssl x509 -req -days 365 -in server.csr -signkey server.key -out server.crt
sudo cp server.crt /etc/ssl/certs
sudo cp server.key /etc/ssl/private


# check certificate
openssl s_client -connect www.yoursite.com:443 < /dev/null 2>/dev/null | openssl x509 -text -in /dev/stdin | grep "Signature Algorithm"

## Enable HTTPS
#1. Enable ssl
sudo a2enmod ssl

#2. Enable the default-ssl site.
sudo a2ensite default-ssl

#set up sertificates
sudo vi /etc/apache2/sites-enabled/default-ssl.conf     #default-ssl -- your site domain name

# change for host config <VirtualHost *:80> to
<VirtualHost *:443>
    # set ssl on
    SSLEngine on
        #optionally add after: SSLEngine on
        SSLProtocol all -SSLv2
        #to deny old protocol: SSLv2.
    #write down right paths
    SSLCertificateFile    /etc/ssl/certs/server.crt
    SSLCertificateKeyFile /etc/ssl/private/server.key

#3. Restart the server.
sudo service apache2 restart


# (optionally) redirect all queries on https
sudo  vi  /etc/apache2/sites-enabled/000-default
<VirtualHost *:80>
        ...
        RewriteEngine On
        RewriteCond %{HTTPS} off
        RewriteRule (.*) https://%{HTTP_HOST}%{REQUEST_URI}
</VirtualHost>



## To Disable HTTPS
#1. Disable ssl
#sudo a2dismod ssl

#2. Disable the default-ssl site.
#sudo a2dissite default-ssl

#3. Restart the server.
#sudo service apache2 restart

#Additions: 
# for curl need add to settings in php:
# curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, true);
# curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 2);

#  right fix need export *.crt file from server: http://unitstep.net/blog/2009/05/05/using-curl-in-php-to-access-https-ssltls-protected-sites/
#curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, true);
#curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 2);
#curl_setopt($ch, CURLOPT_CAINFO, getcwd() . "/CAcerts/BuiltinObjectToken-EquifaxSecureCA.crt");
