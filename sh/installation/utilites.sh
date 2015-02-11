# utilites
sudo apt-get -y install expect
sudo apt-get -y install colordiff
sudo apt-get -y install xbindkeys
sudo apt-get -y install ppa-purge

#preload ( daemon for speed loading often use applications )
sudo apt-get -y install preload

#utilite devilspie
sudo apt-get -y install devilspie
mkdir ~/.devilspie
echo '(if (is (application_name) "Terminal") (maximize))' > \
~/.devilspie/gnome-terminal.ds