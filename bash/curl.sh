# http://stackoverflow.com/questions/15995919/curl-how-to-send-cookies-via-command-line
# http://curl.haxx.se/docs/http-cookies.html 

# to write to a cookie file and start engine and to use cookie you can use
curl -c /path/to/cookiefile http://yourhost/

#to read cookies from and start the cookie engine, or if it isn't a file it will pass on the given string.
curl -b /path/to/cookiefile  http//yourhost/

