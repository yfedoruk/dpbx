mail -s "Test Email" yfedoruck@gmail.com < /dev/null

echo 'test' | mail -s 'test' yfedoruck@gmail.com

sendmail yfedoruck@gmail.com  < /tmp/email.txt

#To send email with attachment.
mail -a /opt/backup.sql -s "Backup File" yfedoruck@gmail.com < /dev/null

#check from terminal
telnet mail.inmyvac.com 143
telnet mail.inmyvac.com 25

#logs here
/var/log/mail.log
/var/log/mail.err

#configs
/etc/mail/sendmail.cf

#!! WARNING !!
#if is installed mailcatcher, phpmailer doesn't work. Start then mailcatcher! (Alt+f2 -> mailcatcher)

# ++++++++++++++++
#http://stackoverflow.com/questions/7578952/sending-mail-takes-long-time-in-localhost/12279895#12279895
#Edit the file /etc/hosts and make sure the first line is the following:

127.0.0.1 localhost.localdomain localhost myhostname
#Edit the sendmail configuration file ( /etc/mail/sendmail.cf in Ubuntu) and Uncomment the line #O:
O HostsFile=/etc/hosts

sudo service sendmail restart

#+++++++++++++++ !!!! ++++++++ My unqualified host name (slava) unknown; sleeping for retry // unable to qualify my own domain name (slava) -- using short name
#http://forum.linuxcareer.com/threads/1697-Sendmail-quot-unqualified-hostname-unknown-sleeping-for-retry-unqualified-hostname

#input this to /etc/hosts
127.0.0.1       localhost.localdomain localhost slava
127.0.1.1       slava

sudo service sendmail restart
