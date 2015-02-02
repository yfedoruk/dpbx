NewConsole = {
    log: function(x){
	alert('log: ' + x);
    }
}


ConsoleAdapter = {
    log: function(x){
	NewConsole.log(x);
    }
}
console = ConsoleAdapter;

console.log(123); // will be alert 'log: 123'
