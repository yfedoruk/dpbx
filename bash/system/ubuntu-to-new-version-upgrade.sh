# http://losst.ru/obnovlenie-ubuntu-14-04-do-16-04
update-manager #or update all from console, then 

sudo update-manager -d

#fix breaken ubuntu upgrade http://askubuntu.com/questions/346678/how-do-i-resume-a-release-upgrade
sudo apt-get install -f
sudo dpkg --configure -a
sudo apt-get upgrade
sudo apt-get clean

#
#[12:22]slava:~ (yfedoruck)$ sudo apt-get clean 
#E: Could not get lock /var/lib/apt/lists/lock - open (11: Resource temporarily unavailable)
#E: Unable to lock directory /var/lib/apt/lists/
# https://ubuntuforums.org/showthread.php?t=1986288

sudo rm /var/lib/apt/lists/* -vf 
sudo apt-get update
