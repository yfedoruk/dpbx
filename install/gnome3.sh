sudo add-apt-repository -y ppa:gnome3-team/gnome3
sudo add-apt-repository ppa:gnome3-team/gnome3-staging
sudo apt-get update
sudo apt-get dist-upgrade

sudo apt-get -y install gnome-settings-daemon-schemas
sudo apt-get -y install gnome-shell
sudo apt-get -y install gnome-tweak-tool


#Failed to start session after upgrade to 14.04
#I faced the same problem after the upgrade.. I tried to install Gnome env. and surprisingly this got fixed.

sudo apt-get install gnome
sudo apt-get install gnome-session-flashback
sudo apt-get install unity-settings-daemon
sudo apt-get install gnome-session-fallback
sudo apt-get install gnome-settings-daemon-schemas=3.8.6.1-0ubuntu11.2
sudo reboot

