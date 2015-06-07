#After install via Vundle, 

1. check ubuntu ruby version 
ruby --version

2. check vim-ruby version. Type inside vim:
:ruby puts "#{RUBY_VERSION}-p#{RUBY_PATCHLEVEL}"

3. install proper ruby version and switch to it.
rvm install ruby-1.9.3-p0
rvm use ruby-1.9.3-p484   #back switch: rvm use ruby-2.0.0-p247

4. go to ~/.vim/bundle/command-t and run 
rake make

5. enjoy!