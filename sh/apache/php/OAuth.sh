#
sudo apt-get install php-pear php5-dev

#after that you need to run pecl install command for Oauth
sudo pecl install oauth

#after that add oauth entry in php.ini file
extension=oauth.so # /etc/php5/apache2/php.ini (ubuntu)

#check for exists (and may add to it extension=oauth.so)
/etc/php5/cli/php.ini
/etc/php5/apache2/php.ini

#check OAuth in phpinfo()
phpinfo();

#restart apache
/etc/init.d/apache2 restart

pecl channel-update pecl.php.net

    #Problem: in phpinfo() is oauth.ini: /etc/php5/apache2/conf.d/oauth.ini but no OAuth module loaded indeed.
$ sudo find /usr/lib/php5 -name 'oauth.so'
/usr/lib/php5/20121212/oauth.so
$ sudo vi /etc/php5/apache2/conf.d/oauth.ini 
    #comment wrong path and paste right one
    ;extension=/usr/lib/php5/20090626+lfs/oauth.so 
    extension=/usr/lib/php5/20121212/oauth.so
$sudo service apache reload
#check OAuth in phpinfo() for OAuth section:

