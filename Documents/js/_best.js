1. Allways use word "var" in local variables, otherwise variable becomes global:
    function(){
        var a;
    }
    
2. Default function arguments:
function myFunc(requiredArg, optionalArg){
        //best
    optionalArg = (typeof optionalArg === "undefined") ? "defaultValue" : optionalArg;
    
        //a some less securily:
    optionalArg = optionalArg || 'defaultValue';

    //do stuff
}

