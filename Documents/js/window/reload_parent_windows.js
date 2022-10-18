#Use this to close the child window and then refresh the parent window. This works for me.

<script>
function windows(){
	window.close();
	if (window.opener && !window.opener.closed) {
		window.opener.location.reload();
		//window.opener.location.href=... //go to other page
	} 
}
</script>
