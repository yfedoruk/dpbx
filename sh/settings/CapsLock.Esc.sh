#sudo dumpkeys > ~/loadkeys_backup.map
#sudo loadkeys ~/Dropbox/caps_to_esc.map

#In recent versions of both Debian and Ubuntu you'll need an extra utility:
#sudo apt-get install gnome-tweak-tool
#Run this by typing "tweak tool" in to the GNOME launcher or Ubuntu Dash, go to the Typing tab and select "Make Caps Lock an additional ESC" under the Caps Lock key behaviour dropdown.


#ubuntu 14.04. 
xmodmap -e "remove Lock = Caps_Lock"
xmodmap -e "keycode 9 = Caps_Lock NoSymbol Caps_Lock"
xmodmap -e "keycode 66 = Escape NoSymbol Escape"
xmodmap -pke > ~/.xmodmap