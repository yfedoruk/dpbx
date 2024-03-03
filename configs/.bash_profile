!#/bin/bash

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

#check if veracrypt is running
if ! pgrep "veracrypt" >> /dev/null
then
	gksudo "$HOME/logon.sh"
fi


# set key bindings
xbindkeys -f ~/.xbindkeysrc

# map keys
source ~/.xinitrc

