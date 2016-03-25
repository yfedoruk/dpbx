1. format flash to fat32: palimpsest  (standrd ubuntu utility. type 'disks' in launch search)

2. create bootable flash with unetbootin:

sudo add-apt-repository ppa:gezakovacs/ppa
sudo apt-get update
sudo apt-get install unetbootin

not use usb-creator-gtk -- it is buggy!! fuck!!
use only windowed (yeah! motherfucker!) unetbootin utility

also `sudo dd if=sourceFileName.iso of=/dev/sd*` is buggy too