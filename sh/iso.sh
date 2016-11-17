#Creating ISO Images from Files/Directories
#For this tutorial we'll use the genisoimage utility, developed as part of the cdrkit project. genisoimage is a command-line tool for creating ISO 9660 filesystem images, which can be burnt after to a CD or DVD using wodim or some other burning tool. To install it open a terminal and type the following as root:

apt-get install genisoimage

#Now, let's use the simplest syntax to create an ISO image out of a directory and its contents:

genisoimage -o output_image.iso directory_name

#The image, called output_image.iso, will have the directory_name as the root folder. In order to create an image out of several files and folders and without a root directory, use this command:

genisoimage -o output_image.iso file1 file2 file3

#This command will create an image which will contain the files file1, file2 and file3 and will have no root directory.
#Another useful switch to genisoimage is -R, which uses the Rock Ridge protocol to preserve ownership and permission records, enable longer filenames and support symbolic links and device files:

genisoimage -R -o output_image.iso file1 file2 file3


			Creating ISO Images from CDs/DVDs
For this we will use the dd tool, used to create or copy files formatting them using the specified filesystem. First, unmount the device if it is already mounted:

# umount /dev/cdrom

#Your device may have a different name (e.g. /dev/cdrw, /dev/scd0 or such, so replace accordingly). The command to create an image is the following:
$ dd if=/dev/cdrom of=~/cd_image.iso

#Where if and of mean input file and output file, respectively and ~ is your home directory.

#Additionally, you can create an image from an audio CD with the following command:

cat /dev/scd0 > ~/audio_image.iso