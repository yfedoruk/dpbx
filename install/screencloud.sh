# Ubuntu 14.04 only
wget -q -O- http://download.opensuse.org/repositories/home:olav-st/xUbuntu_14.04/Release.key | sudo apt-key add -
sudo add-apt-repository 'deb http://download.opensuse.org/repositories/home:/olav-st/xUbuntu_14.04/ /'
sudo apt-get update
sudo apt-get install screencloud