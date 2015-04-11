Default values:

files: 644 (-rw-r--r--)
folders: 755 (drwxr-xr-x)

# it is so, because "execute" for folders means entering to folder.

find /home/test -type f -exec chmod 644 {} \;
find /home/test -type d -exec chmod 755 {} \;

    #The same:
chmod -R go=rX,u=rwX .
#or
chmod -R 755 /home/test.