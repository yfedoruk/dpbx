## document.onload
#document.onload fires when the DOM tree (built from the markup code within the document) is completed.
jQuery(document).ready(function(){

});
/* or */
$(function(){ });

## window.onload
# run a function when the page is fully loaded including graphics. 
# window.onload fires when the document's window is ready for presentation
# window.onload can take a while to fire, when multiple external resources have yet to be requested, parsed and loaded.
$(window).load(function() { });
