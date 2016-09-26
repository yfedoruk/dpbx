curl -X GET -c coockie.txt http://www.localhost.lo/
curl -X POST -b coockie.txt -c session.txt -d 'username=UNAME&password=PASS' -H 'Content-Type:application/x-www-form-urlencoded;charset=UTF-8' http://www.localhost.lo/login
