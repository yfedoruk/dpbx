#Diable touchpad
xinput list

#Your touchpad should show up in there somewhere. Make note of the touchpad's full name. Then, in your Startup Applications, make a new entry and put in:

xinput set-prop "ETPS/2 Elantech Touchpad" "Device Enabled" 0

#You can uncheck it in Startup Applications to stop this behavior or run that command in terminal with a 1 instead of a 0 to enable it again.
