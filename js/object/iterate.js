
//Iterate through object properties

for (var property in object) {
    if (object.hasOwnProperty(property)) {
        // do stuff
    }
}

// underscore
_.each(obj, function(val, key) {
   // do stuff
});