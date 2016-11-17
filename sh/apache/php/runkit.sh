#Install runkit PHP PECL extension On Ubuntu

!#/bin/bash
sudo apt-get install gcc php-pear # php5.6-dev
cd ~/Downloads
git clone https://github.com/zenovich/runkit.git
sudo chmod -R 777 runkit
cd runkit
phpize
./configure
make
make test
#sudo make install
sudo service apache2 reload
#sudo rm -rf runkit


#sudo phpenmod runkit
#sudo apache2ctl graceful
