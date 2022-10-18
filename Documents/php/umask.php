<?
#set file permissions for www-data user (browser) for file creating:
umask(111) 


#Bit	Targeted at	File permission
0	Owner	read, write and execute
7	Group	No permissions
7	Others	No permissions


#Octal value : Permission
0 : read, write and execute
1 : read and write
2 : read and execute
3 : read only
4 : write and execute
5 : write only
6 : execute only
7 : no permissions


#!
Avoid using this function in multithreaded webservers. It is better to change the file permissions with chmod() after creating the file. Using umask() can lead to unexpected behavior of concurrently running scripts and the webserver itself because they all use the same umask.