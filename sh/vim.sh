#gvim
sudo apt-get remove vim-common
sudo apt-get remove vim-runtime
#sudo apt-get install ubuntu-restricted-extras

sudo apt-get install vim-gnome

#utilites
sudo apt-get install ctags

#plugins
vundle
tagbar # is also old - taglist
git@github.com:xolox/vim-session.git #and need git@github.com:xolox/vim-misc.git

sudo apt-get install git

# ubuntu: /usr/share/vim/vim72/syntax/

#recomplation
cd /usr/local/src/vim #https://github.com/codedreality/vim/tree/fix-python3x-support
./configure --enable-rubyinterp --enable-pythoninterp --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu/  #where is config.c 		/usr/lib/python3.4/config

#check ./configure output 
checking --enable-pythoninterp argument... yes
....
checking for python2... (cached) /usr/bin/python2
checking Python version... (cached) 2.7
checking Python is 2.3 or better... yep
checking Python's install prefix... (cached) /usr
checking Python's execution prefix... (cached) /usr
(cached) checking Python's configuration directory... (cached) /usr/lib/python2.7/config-x86_64-linux-gnu/

#or
(cached) checking Python's configuration directory... (cached) 
can't find it!


#try!
locate python | grep '/config$
sudo apt-get install python2.7-dev
sudo apt-get install libpython2.7-dev