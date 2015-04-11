#copy hidden files. Note that /home/user must not exist already, or else it will create /home/user/skel.
cp -r /etc/skel /home/user

#or if dir already exists
mkdir /home/<new_user>
cp -r /etc/skel/. /home/<new_user>
