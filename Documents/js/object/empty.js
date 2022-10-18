Object.keys({}).length;

#Pre-ECMA 5
function isEmpty(obj) {
    for(var prop in obj) {
        if(obj.hasOwnProperty(prop))
            return false;
    }

    return true;
}

# ECMAScript 5
function isEmpty(obj) {
    return Object.keys(obj).length === 0;
}


#jQuery:
jQuery.isEmptyObject({}); // true

#lodash:
_.isEmpty({}); // true

#Underscore:
_.isEmpty({}); // true