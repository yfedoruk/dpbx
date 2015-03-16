sudo chown $USER /usr/local/src
sudo chmod u+rwx /usr/local/src

#gcc
sudo apt-get install build-essential
sudo apt-get install automake
sudo apt-get install checkinstall
#ncurses
sudo apt-get install libncurses5-dev

#download http://www.vim.org/mercurial.php
cd /usr/local/src
hg clone https://vim.googlecode.com/hg/ vim
cd vim
hg pull
hg update

#make
cd src
make distclean  # if you build Vim before
make
sudo checkinstall



**********************************************************************

 Done. The new package has been installed and saved to

 /usr/local/src/vim/src/src_7.4.658-1_amd64.deb

 You can remove it from your system anytime using: 

      dpkg -r src

**********************************************************************

#plugins
cd ~/.vim/
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim