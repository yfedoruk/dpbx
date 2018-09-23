# How to restore grub. Install grub on ssd with Windows installed.

# 1. find which is ubuntu install partition:
sudo fdisk -l 

# for example it is: /dev/sdb2       2097156096 2292469759  195313664  93,1G 83 Linux
# 2. mount it to /mnt:

sudo mount /dev/sdb2 /mnt

# Windows is on: /dev/sda1          2048   1026047   1024000   500M  7 HPFS/NTFS/exFAT
#. 3. Install grub on it:

sudo grub-install --boot-directory=/mnt /dev/sda


