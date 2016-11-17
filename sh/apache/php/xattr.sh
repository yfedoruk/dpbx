
#xattr - extended file attributes
sudo apt-get install libattr1-dev

pecl search xattr
sudo pecl install xattr  #Installing '/usr/lib/php5/20090626+lfs/xattr.so' ; 
#You should add "extension=xattr.so" to php.ini

pecl list
    #Package Version State
    #oauth   1.2.3   stable
    #xattr   1.2.0   stable

#create  xattr.ini
sudo vim /etc/php5/apache2/conf.d/xattr.ini

#find module file
$ sudo find /usr/lib/php5 -name 'xattr.so'
/usr/lib/php5/20090626+lfs/xattr.so

#insert to xattr.ini and reload apache. Check phpinfo() for section "xattr"
extension=/usr/lib/php5/20090626+lfs/xattr.so

sudo service apache2 reload



