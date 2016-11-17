#add user slava to admin group (don't drop slava's primary group)
usermod -a -G admin slava 


######## chown ##########

#set user and group for selected directories
chown -R username:groupname ./somedir /tmp /var/tmp

# only user 
chown  -R root /var/run
# only group 
chown :groupname index.php

#################### chmod ###################
#set files
find . -type f -exec chmod 644 {} \;
#set dirs
find . -type d -exec chmod 755 {} \;
#one dir
chmod 550 pear
#or
chmod -R go=rX,u=rwX /home/test
# g -- group, u -- user, o -- other

