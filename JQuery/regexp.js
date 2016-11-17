>>>>>>>>>>> jQuery selector regular expressions

187 You can use the filter function to apply more complicated regex matching. Here's an example which would just match the first three divs.

<div id="abcd"></div>
<div id="abccd"></div>
<div id="abcccd"></div>
<div id="abd"></div>
$('div')
    .filter(function() {
        return this.id.match(/abc+d/);
    })
    .html("Matched!")
;

37    +1 for a straightforward solution that doesn't require an additional library/plugin. – maerics Jun 3 '11 at 4:19
7     3 years late here, but I was just looking up jQuery wildcards and found this incredibly helpful. I hate loading hundreds of libraries when it can be avoided. That's the whole reason I went with jQuery in the first place, was to incorporate all the functionality I could ever want in a few simple and powerful functions. – stevendesu Aug 30 '11 at 1:10
1     Awesome solution. Thanks! – dex3703 Oct 31 '11 at 19:30



+++++++++++++++++++++++


James Padolsey created a wonderful filter that allows regex to be used for selection.
Say you have the following div:

<div class="asdf">
Padolsey's :regex filter can select it like so:

$("div:regex(class, .*sd.*)")
Also, check the official documentation on selectors.

Xenph Yan
8,56892537
1     Ok. I have been there but I didn't really know the name of what I was looking for. Ive had another look and using attribute filters is what I was after. – Joel Cunningham Oct 10 '08 at 5:49
1     excellent resource! – iamserious Mar 14 '11 at 15:56
The regex selector by @padolsey works great. Here's an example where you can iterate over text, file and checkbox input fields or textareas with it: $j('input:regex(type, text|file|checkbox),textarea').each(function(index){ // ... }); – Matt Setter Jan 6 at 11:41