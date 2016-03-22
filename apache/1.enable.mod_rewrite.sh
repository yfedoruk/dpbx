sudo a2enmod rewrite
sudo service apache2 restart

#test
apache2ctl -M | grep  rewrite_module
