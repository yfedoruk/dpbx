/*
 * Select/submit only changed form fields with jQuery
 * 
 * http://stackoverflow.com/questions/5221633/select-submit-only-changed-form-fields-with-jquery 
 */

#Another approach would be to serialize the form when the page loads, and then on submit, only submit the changes.

$(function() {

  var $form = $('form');

  var startItems = convertSerializedArrayToHash($form.serializeArray()); 

  $('form').submit() {
    var currentItems = convertSerializedArrayToHash($form.serializeArray());
    var itemsToSubmit = hashDiff( startItems, currentItems);

    $.post($form.attr('action'), itemsToSubmit, etc.
  }
});
#Then, all you have to write is the hashDiff function, which is straightforward and generally useful.
#This is nice because it can easily be packaged into a plugin, and it can work repeatedly on the same form if you're using Ajax.

function hashDiff(h1, h2) {
  var d = {};
  for (k in h2) {
    if (h1[k] !== h2[k]) d[k] = h2[k];
  }
  return d;
}

######## I rafactor it. Add required array, for the same values that must be send to server.
function hashDiff(h1, h2, required) {
	if (typeof required === "undefined")
		required = [];

	var d = {};
	for (var k in h2) {
		if (h2.hasOwnProperty(k) && h1[k] !== h2[k] || required.indexOf(k) !== -1) {
			d[k] = h2[k];
		}
	}
	return d;
}





function convertSerializedArrayToHash(a) { 
  var r = {}; 
  for (var i = 0;i<a.length;i++) { 
    r[a[i].name] = a[i].value;
  }
  return r;
}

#Here's a minimal test:

  describe('hashDiff()', function() {
    it('should return {} for empty hash',function() {
      expect(hashDiff({},{})).toEqual({});
    });
    it('should return {} for equivalent hashes',function() {
      expect(hashDiff({a:1,b:2,c:3},{a:1,b:2,c:3})).toEqual({});
    });
    it('should return {} for empty hash',function() {
      expect(hashDiff({a:1,b:2,c:3},{a:1,b:3,c:3})).toEqual({b:3});
    });
  });

