var dfrd = $.Deferred();
var tpldrives = '';
(function(def){
	$.get(baseurl + '/themes/kangaroo/views/data/tpl/drives.php', function(data) {
	  tpldrives = data;
	  def.resolve();
	});
})(dfrd);
dfrd.promise().then(function(){
	nav.prepend(tpldrives);
});