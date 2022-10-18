//GET VALUE OF RADIO BUTTON GROUP USING PROTOTYPE
//If you want to get the value of the selected element of a radio group, prototype makes this easy. There is more than one way to do it. I’ll update this post as better methods surface. Check out code after the jump.

<script type="text/javascript">
$$('input:checked[type="radio"][name="my_radio_group"]').pluck('value');
</script>

//What this does is use css selectors to pull out an input element with the attribute “checked” of type “radio” and with the name”my_radio_group”. The $$ function returns an array, although in this case it is only one element long. “pluck” returns the given attribute (in our case we want the value attribute) for the elements in the array.