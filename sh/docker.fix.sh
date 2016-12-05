#fix internet connection in docker

#@ml10 can you try to reset everything?

pkill docker
iptables -t nat -F
ifconfig docker0 down
brctl delbr docker0
docker -d

#It will force docker to recreate the bridge and reinit all the network rules