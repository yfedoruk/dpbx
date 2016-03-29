#!/bin/sh
setxkbmap -option grp:rwin_toggle 

if setxkbmap -query | grep -q us,ru ; then 
    setxkbmap -option grp:lwin_toggle us,ua ;
else 
    setxkbmap -option grp:lwin_toggle us,ru;
fi
