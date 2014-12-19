#To have the new umask running, check if the file /etc/apache2/envvars will be used within your Apache start file /etc/init.d/apache2 :

PIDFILE=$(. /etc/apache2/envvars && echo $APACHE_PID_FILE)

#Set your umask in /etc/apache2/envvars :

	# umask 002 to create files with 0664 and folders with 0775
	umask 002


#Restart your Apache :

/etc/init.d/apache2 stop
/etc/init.d/apache2 start