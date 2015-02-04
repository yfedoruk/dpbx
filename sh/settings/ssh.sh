#!bin/bash
cat id_rsa.pub >> authorized_keys

scp ~/.ssh/id_rsa.pub .ssh/authorized_keys

# Copy my id_rsa.pub to remote server authorized_keys via ssh. I use this to quickly (in one line) copy my own id_rsa.pub to remote server so I can connect w/out using my password.
cat ~/.ssh/id_rsa.pub | ssh user@server.com 'cat >> .ssh/authorized_keys'

