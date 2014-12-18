#!/bin/bash
#1. To add our PPA and install the latest Oracle Java (JDK) 7 in Ubuntu, use the commands below:
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update && sudo apt-get -y install oracle-java7-installer && sudo apt-get -y install  oracle-jdk7-installer
#2. After the installation you have enable the jdk:
update-alternatives –display java
#3. Check if Ubuntu uses Java JDK 7
java -version
#4. Check what compiler is used:
javac -version
#5. Adding JAVA_HOME to environment
sudo gedit /etc/environment 
    #Append to the end of the file: JAVA_HOME=/usr/lib/jvm/java-7-oracle
#6. Removing Oracle JDK 7
#sudo apt-get remove oracle-jdk7-installer
