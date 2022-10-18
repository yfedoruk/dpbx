var sUrl = document.url;
var nTheNumber = (sUrl.match(/\d+/));




//////////////
I believe that the URL  property [1] is supposed to be case‐sensitive uppercase according to the W3C DOM2 HTML specification [2]. Also, the parentheses around sUrl.match(/\d+/) should be unnecessary.

Quote:
Originally Posted by mattyod View Post
Now one last thing, would anyone be so kind as to explain how (/\d+/) or (/\d/g) represents "any decimal number"?

    * As you, yourself, have already mentioned, they’re regular expressions (minus the parentheses).
    * The preceding and following / characters denote the start and end of a regular expression literal (in the same way that the preceding and following " or ' characters denote the start and end of a string literal).
    * The \d escape (“d” stands for “digit”) represents any of the ten characters zero through nine (0, 1, 2, 3, 4, 5, 6, 7, 8, or 9).
    * The plus sign quantifier (+) indicates that one or more instances of the preceding character (\d here) need to appear for the expression to match.
    * The g flag (“g” stands for “global”) immediately following the regular expression literal end delimiter (/) indicates that the expression should return as many matches as can be found in whatever is being searched. Thus, in /\d/g, every instance of a single digit is matched; without g, only the first instance is matched.

Two things might be clear now:

   1. The reason I prefer /\d+/ over /\d/g is that the first returns a single match while the latter returns an array of matches that need to be joined (hence Philip M’s join("")). I also prefer it since it will only match the first consecutive stream of numbers whereas the latter will match any digit anywhere.
   2. Those two expressions do not match “any decimal number”. To do that, you would need something like /\d+\.\d+/ where \. represents a period (.) character. (A period character without the backslash escape means something else.)

References

   1. http://www.w3.org/TR/DOM-Level-2-HTM...ml#ID-46183437
   2. http://www.w3.org/TR/DOM-Level-2-HTML/
