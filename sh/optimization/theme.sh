#!/bin/bash
clear
for d in ls /usr/share/themes/*; do
metacity-theme-viewer `basename "$d"`;
echo "-----------------------"
done
exit 0