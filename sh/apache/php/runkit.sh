#Install runkit PHP PECL extension On Ubuntu

!#/bin/bash
sudo apt-get install gcc php-pear php5-dev
cd ~/Downloads
git clone https://github.com/zenovich/runkit.git
cd runkit
sudo pecl install package.xml
sudo sh -c 'echo "extension=runkit.so" >> /etc/php5/mods-available/runkit.ini'
sudo php5enmod runkit
sudo apache2ctl graceful
