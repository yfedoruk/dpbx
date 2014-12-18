sudo apt-get install epiphany-browser  #https://live.gnome.org/Epiphany_2fAdBlockExtension
sudo apt-get install midori

#opera
wget -O- http://deb.opera.com/archive.key | sudo apt-key add -
sudo sh -c 'echo "deb http://deb.opera.com/opera/ stable non-free" >> /etc/apt/sources.list'
sudo apt-get update && sudo apt-get install -y opera


#chrome
#To install Google Chrome, run the following:

sudo apt-get install libxss1
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb
#For 32-bit systems user can use this code:

sudo apt-get install libxss1
wget https://dl.google.com/linux/direct/google-chrome-stable_current_i386.deb
sudo dpkg -i google-chrome*.deb
#sudo rm /etc/apt/sources.list.d/google.list #fix "duplicarte source" during "apt-get upgrade"

#ff
sudo apt-get install firefox
sudo add-apt-repository ppa:mozillateam/firefox-next
sudo apt-get update && sudo apt-get upgrade
#https://help.ubuntu.com/community/FirefoxNewVersion
sudo add-apt-repository ppa:ubuntu-mozilla-security/ppa 
sudo apt-get update && sudo apt-get install firefox




#addons firefox
# Awesome screenshot
# firebug + pageSpeed (+ YSlow)
# tamperdata (for easy posts queryes)
# UnMHT
# Adblock Plus
# NoScript
# Autofill Forms:  https://addons.mozilla.org/en-US/firefox/addon/autofill-forms/
# FillForm (small extension)
# Extended statusbar(?)
