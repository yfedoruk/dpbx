#create user
adduser yf

#create passwd
passwd yf

#delete passwd
passwd -d username


#remove user 
userdel -rf yf


#rename user
usermod -l newname -d /home/newname -m /home/oldname


#Find file owned by user
find directory-location -user {username} -name {file-name}

#list all user groups
id -Gn usr

#list all users
getent passwd
cat /etc/passwd | cut -d: -f1

