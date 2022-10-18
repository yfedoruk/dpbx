Get hostname:

window.location.host
window.location.hostname

Get url:
window.location.pathname

in html: 
onclick="window.open('http://'+window.location.host+'/returns')" href="#"


#window.location.origin considered harmful Posted on March 27, 2012 by hyperink
#One important note for those of you developing in Webkit browsers, window.location.origin is webkit only. That means you should veer towards 

window.location.protocol + "//" + window.location.hostname


#Webkit-based browsers and Firefox 21 have window.location.origin. For others, I use the following code:
if (!window.location.origin)
   window.location.origin = window.location.protocol+"//"+window.location.host;
#omplete 'basename' including the trailing slash would be: 
   window.location.protocol+"//"+window.location.host + "/";