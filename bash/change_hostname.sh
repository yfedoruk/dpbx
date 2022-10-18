#Type the hostnamectl command :
sudo hostnamectl set-hostname newNameHere
#Delete the old name and setup new name.
#Next Edit the /etc/hosts file:
sudo nano /etc/hosts
#Replace any occurrence of the existing computer name with your new one.
#Reboot the system to changes take effect:
sudo reboot
