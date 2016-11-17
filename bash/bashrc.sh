#The linux way is to append your commands to ~/.bashrc instead of /etc/rc.local.
#Every user has a .bashrc in it's home directory. This scriptfile is run automatically just after a user logs in. It is run with the credentials of the user so a su command is not needed.

This is not quite correct, as .bashrc is not read when a user logs in using the normal lightdm, for example.

#I concluded too fast that the user was using a commandline login instead of a display manager because of the "manual" startx command he mentioned....my bad :-) – thom 