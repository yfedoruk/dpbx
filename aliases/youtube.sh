#!/bin/bash

#ytb() {
#  curl --ciphers RC4-SHA "$(youtube-dl -g https://www.youtube.com/watch?v=$1)" | mplayer -
#}

ytadd(){
    mpc add `youtube-dl -f140 -g http://www.youtube.com/watch?v=$1`
}

ytb(){
    cd ~ && `nohup mpv $1 --pause &` && cd -
}
