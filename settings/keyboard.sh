#cahnge layouts!

setxkbmap -option grp:alt_shift_toggle us

setxkbmap -option grp:lwin_toggle us,ru
setxkbmap -option grp:lwin_toggle us,ru,ua

#list all options see here: 
/usr/share/X11/xkb/rules/base.lst

#How to apply it permanently?
echo -option grp:lwin_toggle us,ru >>~/.Xkbmap
