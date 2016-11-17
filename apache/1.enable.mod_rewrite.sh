sudo a2enmod rewrite
sudo service apache2 restart

#test it
apache2ctl -M | grep  rewrite_module
