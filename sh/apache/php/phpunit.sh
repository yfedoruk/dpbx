#sudo apt-get install phpunit
#sudo apt-get remove phpunit

sudo pear channel-discover pear.phpunit.de

sudo pear channel-discover pear.symfony-project.com

sudo pear channel-discover components.ez.no

sudo pear update-channels

sudo pear upgrade-all

sudo pear install --alldeps phpunit/PHPUnit

sudo pear install --force --alldeps phpunit/PHPUnit

sudo pear clear-cache
sudo pear install phpunit/PHPUnit_Selenium 

##sudo pear install -a -f phpunit/PHPUnit

PHP Fatal error: Class 'CTestCase' not found in
Make sure you run phpunit at the same directory where your phpunit.xml is