//good
var xmlString = "<div id='foo'><a href='#'>Link</a><span></span></div>";
var parser = new DOMParser();
var doc = parser.parseFromString(xmlString, "text/xml"); //or "text/html"

//bad
var s = '<li>text</li>';
var div = document.createElement('div');
div.innerHTML = s;