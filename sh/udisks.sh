#sudo apt-get install udisks
$ df -h

sudo udisks --unmount /dev/sdb1
sudo udisks --detach /dev/sdb       #not sdb1 !!!
