#skype
sudo add-apt-repository -y "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
sudo apt-get update && sudo apt-get -y install skype
#for set skype font in ubuntu 12.04
sudo apt-get -y install qt4-qtconfig #Then run qtconfig, make changes, exit, and restart Skype. So, when you run qtconfig, choose Gui Style to be Cleanlooks (for example), then save. Restart skype, and the new fonts will be applied. This does not work if the style is Desktop Settings.
