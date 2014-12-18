#!bin/sh
# scrollbar back to standard (Ubuntu 12.04)
sudo apt-get remove overlay-scrollbar liboverlay-scrollbar-0.2-0 liboverlay-scrollbar3-0.2-0

#or (not test)
sudo apt-get remove liboverlay-scrollbar*
gsettings set org.gnome.desktop.interface ubuntu-overlay-scrollbars false


# TUNING 
# remove Guest loading
sudo vi  /etc/lightdm/lightdm.conf 
    [SeatDefaults]  
    ...
    allow-guest=false

#remove indicator-messages ("convert" image in right corner)
sudo apt-get purge indicator-messages
#settings GRUB  # /etc/default/grub  and set GRUB_TIMEOUT="10" or other

# autostart full list
cd /etc/xdg/autostart/
sudo sed --in-place 's/NoDisplay=true/NoDisplay=false/g' *.desktop


#utilites for config services
 sudo apt-get install rcconf
 
 
#cleaner of old packages
sudo apt-get install deborphan 
sudo deborphan | xargs sudo apt-get -y remove --purge

sudo apt-get install bleachbit #dont clear: free disk space and memory


#for Unity
sudo add-apt-repository ppa:myunity/ppa
sudo apt-get update
sudo apt-get install myunity


#indicators
sudo apt-get install indicator-multiload   # ppa:indicator-multiload/stable-daily
#or alternative 
sudo add-apt-repository ppa:alexeftimie/ppa 
sudo apt-get install indicator-sysmonitor  #set own settings: http://askubuntu.com/questions/100306/internet-connectivity-indicator-applet/104883#104883

#cpu
sudo apt-get install indicator-cpufreq

#Hardware Sensors Indicator
sudo apt-add-repository ppa:alexmurray/indicator-sensors 
sudo apt-get update  
sudo apt-get install indicator-sensors

#startup manager
sudo apt-get install bum

#Stickynotes
sudo add-apt-repository ppa:umang/indicator-stickynotes
sudo apt-get update
sudo apt-get install indicator-stickynotes

#char unicode!
# https://github.com/tobyS/indicator-chars http://askubuntu.com/questions/177934/how-to-make-work-indicator-chars-app  #cb = gtk.Clipboard(selection="PRIMARY") cb.set_text(char) cb = gtk.Clipboard(selection="CLIPBOARD") cb.set_text(char)
# ~/.indicator-chars

#optimizing swap
    #setting system variables (
     sudo vi /etc/sysctl.conf 
       vm.swappiness=10,
       vm.vfs_cache_pressure = 1000  )
    sudo restart now
    sudo sysctl -p
