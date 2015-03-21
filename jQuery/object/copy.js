#Most efficient way to clone an object?

//I want to note that the .clone() method in jQuery only clones DOM elements. In order to clone JavaScript objects, you would do:

// Shallow copy
var newObject = jQuery.extend({}, oldObject);

// Deep copy
var newObject = jQuery.extend(true, {}, oldObject);