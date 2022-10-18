
#get function name 
var x = function x() {
    console.log( arguments.callee.name );
}
x();