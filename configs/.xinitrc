#!/bin/bash


# !!!! if xinirc is not loading, do it: !!!
# ln -s $HOME/.xinitrc $HOME/.xsessionrc
# or maybe? ln -s $HOME/.xinitrc $HOME/.xsession


# set language toggle on Right WinKey
#setxkbmap -option grp:rwin_toggle us,ru

#ukr on Alt + Shift
#setxkbmap -option grp:alt_shift_toggle us,ua

# swap capsLock and escape
#setxkbmap -option caps:swapescape

#need only once. May also use: apt install dconf-tools
dconf write /org/gnome/desktop/input-sources/xkb-options "['caps:escape']"
#reset: setxkbmap -option

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

# invoke global X session script
#. /etc/X11/Xsession

#exec openbox



#i3 debug log.  not use it!!!!!!! it kills terminal
# Use 25 MiB of RAM for debug logs
## exec i3 --shmlog-size=26214400



##  i3-dump-log -f > /tmp/i3.log
