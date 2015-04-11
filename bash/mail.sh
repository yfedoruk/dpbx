mail -s "Test Email" yfedoruck@gmail.com < /dev/null

sendmail yfedoruck@gmail.com  < /tmp/email.txt

#To send email with attachment.
mail -a /opt/backup.sql -s "Backup File" yfedoruck@gmail.com < /dev/null

#check from terminal
telnet mail.inmyvac.com 143
telnet mail.inmyvac.com 25