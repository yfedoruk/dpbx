var response = '';
$.ajax({ type: "GET",   
         url: "http://www.google.de",   
         async: false,
         success : function(text)
         {
             response = text;
         }
});

alert(response);


jQuery.ajax({
    url: 'http://' + window.location.host + '/index.php/newwishlist/newwishlist/addtowishlist/',
    data: { customer: wl_customerId, wishlist_id: wishlist, productId: wl_productId },
    dataType: "html",
    type: "GET",
    success: function(response){
        if( 0 == response ){
            jQuery( '#dialogHeader').html( 'Product already in ' + jQuery('#allwishlists input:checked').parent().text() );
            return false; 
        }
        if(response) {
            jQuery('#dialogHeader').html( "Product is added to" + wishlist );
        }
        hide_wishlist_overlay();
    },
    error: 'Error! Some things has gone wrong!'
});