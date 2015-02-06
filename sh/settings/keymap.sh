#!/bin/sh
xmodmap -e "keycode 9 = Caps_Lock NoSymbol Caps_Lock"   #this will make Esc to act as Caps Lock
xmodmap -e "keycode 66 = Escape NoSymbol Escape"        #this will make Caps Lock to act as Esc
xmodmap -pke > ~/.xmodmap
echo "xmodmap .xmodmap" > ~/.xinitrc


## ubuntu 12.04 gnome3 !!!
# System settings > Keyboard > Layout settings > Options > Caps lock key behavior -> Swap Esc and Caps Lock
