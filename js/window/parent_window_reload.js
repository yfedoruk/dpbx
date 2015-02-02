<script>
	window.opener.location.reload();
</script>


<script>
//prototype
Event.observe(window, 'beforeunload', function() {
	window.opener.location.reload();
}
);
</script>
