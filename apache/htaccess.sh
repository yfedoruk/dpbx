#bin/sh
    ### How to Enable .htaccess in Apache2 on a Ubuntu Server ###
        #by Tom on Jul.14, 2009, under Linux, Linux Software, Website Design, Website Development# 

  #Iv jumped back to using my home media server as a web server for testing, and realized that apache2 wouldn’t recognize .htacess files, after some googling i found the answer, you need to open a terminal or putty session:
#navigate to

#if yet not enabled mod_rewirte !
    sudo a2enmod rewrite 
cd /etc/apache2/sites-available

#and open “default” up in your editor or choice

sudo nano default

#Default for AllowOverride is none, it should be All, so your overall “default” file should look like this;

NameVirtualHost *
ServerAdmin admin@site.com
DocumentRoot /var/www/
Options FollowSymLinks
AllowOverride None
Options Indexes FollowSymLinks MultiViews
AllowOverride All
Order allow,deny
allow from all

# This directive allows us to have apache2's default start page
# in /apache2-default/, but still have / go to the right place
# Commented out for Ubuntu
# RedirectMatch ^/$ /apache2-default/

#Then all you need to do is restart apache2:

sudo /etc/init.d/apache2 restart
