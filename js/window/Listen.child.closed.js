#If you store a reference to the child window when you call window.open(), then you can poll using setInterval() to see whether the window is still open using the window.closed property. The example below checks twice per second.

var child = window.open('http://google.com','','toolbar=0,status=0,width=626,height=436');
var timer = setInterval(checkChild, 500);

function checkChild() {
    if (child.closed) {
        alert("Child window closed");   
        clearInterval(timer);
    }
}