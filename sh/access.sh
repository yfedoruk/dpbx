#!/bin/bash
# ssh-keygen
# expect -c 'spawn ssh root@217.8.253.137; expect password ; send "Albion12..\n" ; interact'

expect -c 'spawn ssh-copy-id -i ~/.ssh/id_rsa.pub root@91.151.215.52 ; expect password ; send "f4sh1oN321\n" ; interact';
ssh-copy-id -i ~/.ssh/id_rsa.pub root@91.151.215.52
f4sh1oN321
# in nautilus set link ssh://user@server !!! not ssh://server !! So as user be local default!
