#indicators
sudo apt-get install indicator-multiload   # ppa:indicator-multiload/stable-daily
#or alternative
sudo add-apt-repository ppa:alexeftimie/ppa
sudo apt-get install indicator-sysmonitor  #set own settings: http://askubuntu.com/questions/100306/internet-connectivity-indicator-applet/104883#104883

#cpu
sudo apt-get install indicator-cpufreq

#Hardware Sensors Indicator
sudo apt-add-repository ppa:alexmurray/indicator-sensors
sudo apt-get update
sudo apt-get install indicator-sensors
