#On the fly compression of a tar-ball or mysqldump

#Just to jot it down lest I forget:
#Tar’ing the local directory and streaming the tarball straight to gzip:

tar cvf - . | gzip > target.tar.gz

#MySQLdump’ing directly to gzip:
mysqldump --opt --single-transaction -h HOST -u  USER -pPASS DATABASENAME| gzip > OUTPUT.sql.gz

#Using --single-transaction above to avoid locking restrictions on the tables, and it’s more efficient than --lock-tables=false. In large database situations, though, just replicate…

#To add a timestamp:
NOW="$(date +"%Y-%m-%d")"

#and use $NOW as part of the filename
#for example as single line (or just #!/bin/bash) it

NOW="$(date +"%Y-%m-%d")" && tar cvf - . | gzip > target_$NOW.tar.gz)


#create 
tar zc file > `date -I`.file.tgz

#excluding
tar --exclude='file1' --exclude='patter*' --exclude='file2'

#To exclude all of the files in b, use
 --exclude 'b/*'

#To also exclude the directory b, use 
--exclude 'b/*' --exclude 'b'

$view
tar -tvf file.tar
tar -ztvf file.tar.gz
tar -jtvf file.tar.bz2