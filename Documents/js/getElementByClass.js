getElementsByClass

I've found a few good one's out there. But none I was satisfied with. So with all due respect. I wrote my own:
getElementsByClass Function

function getElementsByClass(searchClass,node,tag) {
    var classElements = new Array();
    if ( node == null )
        node = document;
    if ( tag == null )
        tag = '*';
    var els = node.getElementsByTagName(tag);
    var elsLen = els.length;
    var pattern = new RegExp("(^|\\s)"+searchClass+"(\\s|$)");
    for (i = 0, j = 0; i < elsLen; i++) {
        if ( pattern.test(els[i].className) ) {
            classElements[j] = els[i];
            j++;
        }
    }
    return classElements;
}

How it works

It's simple. It works just how you think getElementsByClass would work, except better.

    Supply a class name as a string.
    (optional) Supply a node. This can be obtained by getElementById, or simply by just throwing in "document" (it will be document if don't supply a node)). It's mainly useful if you know your parent and you don't want to loop through the entire D.O.M.
    (optional) Limit your results by adding a tagName. Very useful when you're toggling checkboxes and etcetera. You could just supply "input". Or, if you're like me, and you said Good Bye to IE5, you can use the "*" asterisk as a catch-all (meaning 'any element).

See getElementsByClass() in action Have Fun! 