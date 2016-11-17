<div class="numInputRight"><input type="text" class="sumit" name="sumAmount1"></div>
<div class="numInputRight"><input type="text" class="sumit" name="sumAmount2"></div>
<div class="numInputRight"><input type="text" class="sumit" name="sumAmount3"></div>

$('.sumit').each(function() { 
    $(this).val($(this).val().replace(/[A-Za-z$-]/g, "")); 
});

$('.sumit').val().replace(/[A-Za-z$-]/g, "");


// 
"SomeString {id} text_{name}_end.".replace(/{id}/g, id).replace(/{name}/g, name);