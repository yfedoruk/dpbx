sudo add-apt-repository ppa:michael-astrapi/ppa
sudo apt-get update && sudo apt-get install truecrypt

#And to remove it:

sudo apt-get install ppa-purge
sudo ppa-purge ppa:michael-astrapi/ppa

# 14.04. 64bit

#To install: (TrueCrypt is automatically added to your Startup Applications.)
sudo add-apt-repository ppa:stefansundin/truecrypt
sudo apt-get update
sudo apt-get install truecrypt

#To remove:
sudo apt-get remove truecrypt
sudo apt-add-repository --remove ppa:stefansundin/truecrypt
sudo apt-get update
