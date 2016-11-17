#!!! I find best solution myself!
only over html!! First time - jQuery('#billing_address_list').after('<input id="cntAge" type="hidden" name="cntAge" value="1" />');
and next times !jQuery('#cntAge').val();!!!


function Person(){
  if(Person.count == undefined){
    Person.count = 1;
  }
  else{
    Person.count ++;
  }
  console.log(Person.count);
}

var p1 = new Person();
var p2 = new Person();
var p3 = new Person();


2.
There is no such thing as an static variable in Javascript. This language is prototype-based object orientated, so there are no classes, but prototypes from where objects "copy" themselves.
You may simulate them with global variables or with prototyping (adding a property to the prototype):
function circle(){
}
circle.prototype.pi=3.14159
This method works, but you are poluting the Function.prototype

3.
you can use arguments.callee to store "static" variables (this is useful in anonymous function too):

function () {
  arguments.callee.myStaticVar = arguments.callee.myStaticVar || 1;
  arguments.callee.myStaticVar++;
  alert(arguments.callee.myStaticVar);
}


4.
If you come from a class-based, strongly typed object-oriented language (like Java, C++ or C#) I assume that you are trying to create a variable or method associated to a "type" but not to an instance.
An example using a "classical" approach, with constructor functions maybe could help you to catch the concepts of basic OO JavaScript:

function MyClass () { // constructor function
  var privateVariable = "foo";

  this.publicVariable = "bar";

  this.privilegedMethod = function () {
    alert(privateVariable);
  };
}

MyClass.prototype.publicMethod = function () {
  alert(this.publicVariable);
};

MyClass.staticProperty = "baz";

//...
var myInstance = new MyClass();
staticProperty is defined in the MyClass object (which is a function) and has nothing to do with its created instances, JavaScript treats functions as first-class objects, so being an object, you can assign properties to a function.

5.
You might take advantage of the fact that JS functions are also objects -- which means they can have properties.
For instance, quoting the example given on the (now vanished) article Static variables in Javascript:

function countMyself() {
    // Check to see if the counter has been initialized
    if ( typeof countMyself.counter == 'undefined' ) {
        // It has not... perform the initilization
        countMyself.counter = 0;
    }

    // Do something stupid to indicate the value
    alert(++countMyself.counter);
}

If you call that function several time, you'll see the counter is being incremented.
And this is probably a much better solution than poluting the global namespace with a global variable.
And here is another possible solution, based on a closure : Trick to use static variables in javascript :

var uniqueID = (function() {
   var id = 0; // This is the private persistent value
   // The outer function returns a nested function that has access
   // to the persistent value.  It is this nested function we're storing
   // in the variable uniqueID above.
   return function() { return id++; };  // Return and increment
})(); // Invoke the outer function after defining it.

Which gets you the same kind of result -- except, this time, the incremented value is returned, instead of displayed.
share|improve this answer
    +1. Closures FTW. – npdoty Apr 27 '10 at 9:14
    Epic win. Saving both those code blocks. – GordonM Nov 3 '10 at 10:08
    +1 for static variable trick – B T Mar 17 '11 at 2:16
    as a shortcut, you could just do countMyself.counter = countMyself.counter || initial_value; if the static variable is never going to be falsey (false, 0, null, or empty string) – Kip Sep 

