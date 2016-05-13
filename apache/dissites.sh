!bash
vi /etc/hosts
#echo 127.0.0.1  $1 >> /etc/hosts
sudo rm /etc/apache2/sites-available/$1.conf
sudo a2dissite $1
sudo service apache2 reload
