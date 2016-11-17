######################
#foreach in javascript

for (var key in some_array) {
    var val = some_array [key];
    alert (key+' = '+val);
}
for (var key in some_object) { alert (key+' = '+some_object[key]); }
######################

Однако следует учесть, что вообще-то конструкция for (.. in ..) в javascript предназначена для перебора свойств объектов а не элементов массива. Постольку поскольку, например, в любом месте прототипу объекта atrray могут быть добавлены новые свойства и они тоже попадут в эту выборку вместе с элементами массива, поломав логику вашего скрипта…
В добавок, что касается массива:

var arr = [1,2,3,4,5];
arr.forEach(function(val, key) {
    console.log("key=" + key);
    console.log("val=" + val); 
});


##################### for ##############
for (var i=0, curr, length=arr.length; (curr=arr[i]) || i<length; i++) {  // (curr=arr[i]) need parenthesis! Or it will be curr=(arr[i] || i<length )
    console.log(curr);
}


######################
# Foreach in  jQuery:

var map = {
‘flammable’: ‘inflammable’,
‘duh’: ‘no duh’
};
$.each(map, function(key, value) {
alert(key + ‘: ‘ + value);
});
######################


########################
#foreach in JavaScript

Actually that’s not true at all.
As all javascript objects are really just associative arrays, there is a foreach like syntax for the ‘for’ construct.
Without it it would be very hard to work with many common javascript objects.
It’s actually very simple to use and incredibly useful if you like associative arrays.
You just have to make sure to use it on an associative array and not an object.

Good (assuming Object has not been overloaded or extended):

    var array = new Object(); //this is safe only if you can assure object has not been extended.
    //use the below if Object has been extended
    var array;

    //everything below here works fine regardless of the two above cases
    array['something'] = ‘yay’;
    array['somethingelse'] = ‘more’;

    for ( keyVar in array ) {
        alert(array[keyVar]);
    }

Bad:

    var array = new Array(); //uh oh, array is an object which means it’s an associative array

    //the below loop will actually give you results, despite never putting “values” into
    //the array variable. This is because array has functions defined from the Array() object
    //which will be grabbed by the keyVar since objects are really associative arrays
    for ( keyVar in array ) {
        alert(array[keyVar]);
    }
########### some funny
function forEachObj(obj, callback) {
    var propNames = Object.getOwnPropertyNames(obj);
    for (var i = 0, propLength = propNames.length, cbLen = callback.length; i < propLength; i++) {
      switch(cbLen){
        case 0 :
        case 1 : callback( obj[propNames[i]]); break;
        case 2 : callback( propNames[i], obj[propNames[i]]); break;
        default : throw new Error ("What the hell are you doing???");
      }
    }
}
x = {a: 4, b: 5};
Object.prototype.z = 777;
forEachObj(x, function(){ console.log("test"); } );
forEachObj(x, function(k){ console.log(k); } );
forEachObj(x, function(k, value){ console.log(k); console.log(value); } );
forEachObj(x, function(value, s, t){ console.log(value); console.log(s);  } );
