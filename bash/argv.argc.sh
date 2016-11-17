# RE: argc/argv in bash!
# How do we use argc and argv (C like) in bash scripts?
 
 #The number of command line arguments is $#.  For example:
 
       % cat foo.sh
       #!/bin/sh
       echo $#
 
       % sh foo.sh
       0
 
       % sh foo.sh hello world
       2
 
       % sh foo.sh "hello world"
       1
 
 #The argv[] equivalent is $@.
 
       % cat foo2.sh
       #!/bin/sh
 
       for argument in $@ ;do
               echo $argument
       done
 
       % sh foo2.sh
       %
 
       % sh foo2.sh hello world
       hello
       world
       %
 
       % sh foo2.sh "hello world"
       hello world
       %
 
 #For more details about the "special variables" of sh, read the sh(1)
 #manpage.
 
       % man 1 sh

