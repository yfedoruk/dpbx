Restart:
/etc/init.d/httpd reload

Stop:
/etc/init.d/httpd stop

Start:
/etc/init.d/httpd start


Для проверки на ошибки
# /etc/init.d/httpd configtest
если Ок, тогда 
# /etc/init.d/httpd stop
# /etc/init.d/httpd start
