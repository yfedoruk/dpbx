#create a new group
groupadd grp

#validate that the group was created successfully.
grep grp /etc/group

#add user to group
usermod -g grp usr

#remove a user from a group
gpasswd -d user group

#Find file owned by a group
find directory-location -group {group-name} -name {file-name}           # find /home -group ftpusers
find / -group grp

#list all groups
cut -d: -f1 /etc/group
vi /etc/group

#list users in group
$do it in reverse: use id to get the groups of every user on the system 
id -Gn usr

#delete a group
groupdel grp

#You may not remove the primary group of any existing user. You must remove the user before you remove the group.
#You should manually check all file systems to ensure that no files remain owned by this group.

