#!/bin/bash
ls -l | grep ^d


Hi , 

there are some technics t view only files or directories in a directory.. 

For ex; 
try 

ls -l |grep "^d" 

to only view directories in a directory 

OR 

for view only files; 

ls -l |grep -v "^d" 

OR 

to view only the names of txt files in a directory; 

ls *.txt|cut -d"." -f1 

OR 

ls -l |grep -v "^d"|awk '{print $9}' 

Hope this helps, 

