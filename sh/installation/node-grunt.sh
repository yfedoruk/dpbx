#https://kalamuna.atlassian.net/wiki/display/KALA/Install+Grunt+on+Ubuntu
sudo apt-get install software-properties-common && \
sudo apt-get install python-software-properties && \
sudo apt-add-repository ppa:chris-lea/node.js && \
sudo apt-get update


sudo npm -g install grunt \
&& sudo npm install -g grunt-cli \
&& sudo chown -R vagrant:vagrant /usr/lib/node_modules \
&& sudo chown -R vagrant:vagrant /home/vagrant/.npm


#then in web-root init grunt:
#npm init
#npm install grunt