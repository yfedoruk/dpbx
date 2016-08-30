sudo apt-get install curl
\curl -L https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
sudo apt-get install libsqlite3-0=3.7.9-2ubuntu1
rvm requirements
rvm install ruby
rvm use ruby --default
rvm rubygems current
gem install rails