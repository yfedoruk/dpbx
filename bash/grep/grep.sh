grep -rn --exclude=*.{xml,svn*} 'icecat' .
---------------------------------------------
#Exclude lines from search:
grep -v '^13' myfile
--------------------------------------------

grep -rni --exclude=*{\.sql,\.svn} 'Accessories' .


#Search all files that match 'icecat' and/or don't match "getTableName('":
grep -rn --color=auto --exclude=*{EN\.xml,svn}* '[^(getTableName)]..icecat' . 
grep -rn --color=auto --exclude=*{EN\.xml,svn}* '[^{(getTableName),(getTable)}]..icecat' .

#grep 2.5.3 introduced the --exclude-dir parameter which will work the way you want.

grep -rI --exclude-dir=.svn PATTERN .

#You can also set an environment variable: 
GREP_OPTIONS="--exclude-dir=.svn"


###### pretty output #####
grep -rn 'minmode' ./ | sed 's/:/ +/' | sed 's/://'


#exclude simlinks (only in new versions)
grep -r

#to follow symlinks (can recursively cicled)
grep -R


sudo apt-get install ack
sudo apt-get install ack-grep # better than grep ?