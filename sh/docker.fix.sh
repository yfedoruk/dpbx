#fix internet connection in docker

#@ml10 can you try to reset everything?

pkill docker
iptables -t nat -F
ifconfig docker0 down
brctl delbr docker0
docker -d

#It will force docker to recreate the bridge and reinit all the network rules


#docker vs cisco
  https://groups.google.com/forum/#!msg/docker-user/gDDCYKAG2Yw/yXg14aROuhkJ
  https://help.ubuntu.com/community/IptablesHowTo
  http://fideloper.com/iptables-tutorial
  https://ubuntuforums.org/showthread.php?t=159661

    #sudo iptables -P INPUT ACCEPT
    #sudo iptables -P OUTPUT ACCEPT
    #sudo iptables -P FORWARD ACCEPT
sudo iptables -F