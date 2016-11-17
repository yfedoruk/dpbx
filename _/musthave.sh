# devilspie
apt-get -y install devilspie
mkdir ~/.devilspie
echo '(if (is (application_name) "Terminal") (maximize))' > ~/.devilspie/gnome-terminal.ds

#git
apt-get install -y git

#Create New Document context menu item missing in Nautilus 3.6.3
touch ~/Templates/new


#nautilus
apt-get -y install nautilus nautilus-open-terminal nautilus-actions && nautilus -q


# utilites
apt-get -y install udisks colordiff hardinfo ppa-purge xbindkeys
apt-get -y install curl libcurl3 libcurl3-dev


#geany
apt-get -y remove geany
add-apt-repository -y ppa:geany-dev/ppa
apt-get -y update
apt-get -y install geany geany-plugins

#soft
apt-get -y install mc
apt-get -y install gedit gedit-plugins

#vim
apt-get -y install vim
vimdir="$HOME/.vim/bundle/Vundle.vim";
if [ ! -d "${vimdir}" ]; then
	mkdir -p ${vimdir}
	git clone https://github.com/gmarik/Vundle.vim.git ${vimdir}
	vim -c "VundleInstall" -c"q!" -c"q!"
fi


#ubuntu 14.04. Caps_Lock/Esc
#xmodmap -e "remove Lock = Caps_Lock" && xmodmap -e "keycode 9 = Caps_Lock NoSymbol Caps_Lock" && xmodmap -e "keycode 66 = Escape NoSymbol Escape" && xmodmap -pke > ~/.xmodmap
# System settings > Keyboard > Layout settings > Options > Caps lock key behavior -> Swap Esc and Caps Lock

# scrollbar back to standard (Ubuntu 12.04)
sudo apt-get remove overlay-scrollbar liboverlay-scrollbar-0.2-0 liboverlay-scrollbar3-0.2-0

