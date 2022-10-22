#http://askubuntu.com/questions/521145/how-to-install-oracle-java-on-ubuntu-14-04

sudo apt-add-repository -y ppa:webupd8team/java
sudo apt-get update
sudo apt-get -y install oracle-java8-installer
export JAVA_HOME=/usr/lib/jvm/java-8-oracle
