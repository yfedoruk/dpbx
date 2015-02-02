It is not necessary to wrap the console.log function. By wrapping it you will loose the formating functionality. 
Just assign it to a debug function: 
    var debug = function () {} ; 
    if (window.console != undefined) { debug = console.log; }. 
Now you can also do this: debug ("%s", "a") –