
# only in current directory
media/*

#everywhere
media

# subdirectory
app/code/core/Mage_0/*

#If the pattern does not contain a slash /, git treats it as a shell glob pattern and checks for a match against the pathname relative to the location of the .gitignore file (relative to the toplevel of the work tree if not from a .gitignore file).
#A leading slash matches the beginning of the pathname. For example, "/*.c" matches "cat-file.c" but not "mozilla-sha1/sha1.c".
#So you should add the following line to your root .gitignore:

/config.php


#If you want to ignore the whole content of a directory except one file inside it, you could write a pair of rules for each directory in the file path. 
#Eg .gitignore to ignore the pippo folder except from pippo/pluto/paperino.xml

pippo/*
!pippo/pluto
pippo/pluto/*
!pippo/pluto/paperino.xml