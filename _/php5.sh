#http://askubuntu.com/questions/565784/how-do-i-upgrade-php-version-to-the-latest-stable-released-version

sudo apt-add-repository ppa:ondrej/php5-5.6
sudo apt update
sudo apt -y install php5.6 php5.6-common php5.6-curl php5.6-dev php5.6-gd php-pear php-imagick php5.6-imap php5.6-mcrypt php-memcache php5.6-mysql php5.6-pspell php5.6-recode php5.6-sqlite3  php5.6-tidy php5.6-xmlrpc php5.6-xsl php5.6-json php5.6-pgsql php-xdebug
sudo apt-get remove php5-snmp #or sudo apt-get install snmp

#php5.6-idn
#php5.6-mhash

#problems php5-5.6
#php5-ming

#settings 
# $: php --ini
# /etc/php5/apache2/php.ini
# short_open_tag = On

sudo sed -i 's/short_open_tag = Off/short_open_tag = On/' /etc/php/5.6/apache2/php.ini

# xdebug disable in terminal (cli) #http://stackoverflow.com/a/35438287
# sudo php5dismod -s cli xdebug

# disable xdebug http://stackoverflow.com/a/29604221
# sudo php5dismod xdebug


