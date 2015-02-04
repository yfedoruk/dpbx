# Cleaning up unused locales
    sudo apt-get install localepurge
    
# After that, you should reboot your computer. 
# To reconfigure this, simply enter the following in terminal.
    sudo dpkg-reconfigure localepurge
    
# to print-out your current locale configuration
    locale

# warning! How to change input keyboard layout while in console?
sudo apt-get install console-data
sudo apt-get install unicode-data


# Change Keyboard Layout on Server
sudo dpkg-reconfigure console-data 
# permanently
sudo dpkg-reconfigure keyboard-configuration

# Thanks, it works, but if i reboot the system i lose my config.
# Run
sudo dpkg-reconfigure keyboard-configuration
# first, then run:
sudo dpkg-reconfigure console-setup