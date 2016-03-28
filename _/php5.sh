#http://askubuntu.com/questions/565784/how-do-i-upgrade-php-version-to-the-latest-stable-released-version
sudo apt-add-repository ppa:ondrej/php5-5.6
sudo apt-get update
sudo apt-get install php5 php5-common php5-curl php5-dev php5-gd php5-idn php-pear php5-imagick php5-imap php5-mcrypt php5-memcache php5-mhash php5-mysql php5-pspell php5-recode php5-sqlite  php5-tidy php5-xmlrpc php5-xsl php5-json php5-pgsql php5-xdebug
sudo apt-get remove php5-snmp #or sudo apt-get install snmp

#problems php5-5.6
#php5-ming

#settings 
# $: php --ini
# /etc/php5/apache2/php.ini
# short_open_tag = On

sed -i 's/short_open_tag = Off/short_open_tag = On/' /etc/php5/apache2/php.ini
