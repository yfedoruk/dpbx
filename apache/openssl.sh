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
#openssl s_client -connect www.yoursite.com:443 < /dev/null 2>/dev/null | openssl x509 -text -in /dev/stdin | grep "Signature Algorithm"

## Enable HTTPS
#1. Enable ssl
sudo a2enmod ssl

#2. Enable the default-ssl site.
#sudo a2ensite default-ssl

#3. Restart the server.
sudo service apache2 restart


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
