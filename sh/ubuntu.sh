#!/bin/bash

sudo apt-get -y install aptitude
sudo aptitude -y install build-essential

## FoxitReader ##
# $sudo dpkg -i FoxitReader_1.1.0_i386

#skype
sudo add-apt-repository -y "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
sudo apt-get update && sudo apt-get -y install skype
#for set skype font in ubuntu 12.04
sudo apt-get -y install qt4-qtconfig #Then run qtconfig, make changes, exit, and restart Skype. So, when you run qtconfig, choose Gui Style to be Cleanlooks (for example), then save. Restart skype, and the new fonts will be applied. This does not work if the style is Desktop Settings.

sudo aptitude -y  install xchm

sudo aptitude -y  install filezilla

#cromium
#sudo add-apt-repository -y ppa:chromium-daily/ppa  # as is errors update: sudo rm /etc/apt/sources.list.d/*chromium-daily*
#sudo apt-get update
sudo apt-get -y install chromium-browser

#gimp
sudo apt-get -y install gimp

#ubuntu tweaks
sudo add-apt-repository -y ppa:tualatrix/ppa
sudo apt-get update
sudo apt-get -y install ubuntu-tweak

# for Unity
sudo apt-get -y install compizconfig-settings-manager

#gconf-editor
sudo apt-get -y install gconf-editor    #  apps → metacity → general: close,minimize,maximize: or  :close,minimize,maximize. Global Keybindings -  "apps > metacity > global_keybindings"


#psd files (photoshop)
# look for gdk-pixbuf-psd

# gnome
#sudo add-apt-repository -y ppa:gnome3-team/gnome3
#sudo apt-get update
#sudo apt-get -y install gnome-shell
#sudo apt-get -y install gnome-tweak-tool

#sudo add-apt-repository -y ppa:ricotz/testing
#sudo apt-get update
#sudo apt-get -y install gnome-shell-extensions-common
#sudo apt-get -y install gnome-shell-extensions
sudo apt-get -y install gnome-terminal

# pdf
sudo apt-get -y install pdfedit

# update ubuntu repositories and packages
#sudo apt-get update
#sudo apt-get upgrade

# settings: http://proubuntu.com.ua/2012/04/25/ubuntu-12-04-lts-setting.html


#dropbox (32-bit)
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86" | tar xzf -
#sudo apt-get -y install nautilus-dropbox

#bugs and fix locale
#sudo apt-get -y install language-pack-en-base
#sudo dpkg-reconfigure locales
#export LC_ALL="en_US"

#gdm
sudo apt-get -y install gdm

#for convertation putty .ppk to ssh key
sudo apt-get install putty-tools  #puttygen id_dsa.ppk -O private-openssh -o id_dsa
