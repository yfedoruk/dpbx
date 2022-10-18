<button id = "likebut" type="button" title="<?php echo $this->__('') ?>" class="button btn-cart" ><span><span>Like</span></span></button>

$("likebut").textContent;  // ==> "Like" 

// do update like as innerHTML 
$("likebut").update("><span><span>Unlike></span></span>");

// observe and do update on event 'click'
$("likebut").observe('click', function(){
    if(!<?php echo $logged ?>)  return;
    if( $("likebut").textContent == "Like" ) {
        $("likebut").update('<span><span>Unlike</span></span>');
    }
    else {
        $("likebut").update('<span><span>Like</span></span>');
    }
        
});