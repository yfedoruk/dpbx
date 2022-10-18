
#on typing in text field

//$(document).ready(function() {
     $('#elf-share-box').keyup( function(e){        //do not use keypress
         console.log('123');
         console.log(e.target.value);
     } );
//})