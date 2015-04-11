#Bash test for for current user is root

if [ `id -u` = 0 ]; then 
 echo root;
fi