The whole point of jQuery is that you don't have to worry about browser differences. I am pretty sure you can safely go with enter being 13 in all browsers. So with that in mind, you can do this:
jQuery(document).keypress(function(e) {
    if(e.which == 13) {
        alert('You pressed enter!');	// 27 - Esc
    }
});