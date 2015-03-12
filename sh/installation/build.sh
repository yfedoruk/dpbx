#You should then build a common directory for yourself where you'll be building these packages. We recommend creating /usr/local/src, but really you can put it anywhere you want. Make sure this directory is writable by your primary user account, by running 
sudo chown $USER /usr/local/src

#and, just to be safe 
sudo chmod u+rwx /usr/local/src

#After you've done this, you're set up to start getting the programs you need.



#compiler gcc which can be obtained by installing the build-essential package
sudo apt-get install build-essential

#and in order to run the configure and autogen.sh files that come with many programs:
sudo apt-get install automake

#Finally, you will need CheckInstall to safely insert your program in your system:
sudo apt-get install checkinstall

#ncurses
sudo apt-get install libncurses5-dev
