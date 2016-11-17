service --status-all

#"+" started
#"-" stopped
#"?" unknown

sudo initctl list

#sudo apt-get install sysv-rc-conf
#sudo sysv-rc-conf

#http://askubuntu.com/questions/19320/how-to-enable-or-disable-services

#list of manually disabled services
find /etc/init/ -name *.override

#disable service
echo manual | sudo tee /etc/init/bluetooth.override

#enble service afterwards
rm /etc/init/bluetooth.override
