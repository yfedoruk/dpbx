#You have to inject $compile (http://docs.angularjs.org/api/ng.$compile) and use it so angular knows about the new html.

$compile('<div>{{row}}</div')($scope).appendTo($event.currentTarget);

//or better jQuery element

$compile( $('#test') )($scope).appendTo($event.currentTarget);


// example
var addsett = $('.add-settings').detach();
angular.element($event.currentTarget).parent().append(
	$compile(addsett)($scope)
);

// example angular

var dfrd = $.Deferred(),
	tpl_url = baseurl + '/themes/kangaroo/views/calendar/assets/tpl/add-settings.html',
	tplcache = $templateCache.get(tpl_url),
	tpl;

if( typeof tplcache !=='undefined' ){
	tpl = tplcache[1];
	dfrd.resolve();
}else{
	$http.get(tpl_url, { cache: $templateCache }).success(function(data){
		tpl = data;
		dfrd.resolve();
	});
}
dfrd.promise().then(function(){
	angular.element($event.currentTarget).parent().append(
		$compile(tpl)($scope)
	);
});


// example JQuery

var dfrd = $.Deferred();
var tpl = $.get(baseurl + '/themes/kangaroo/views/calendar/assets/tpl/add-settings.html').done(function(){
	dfrd.resolve();
});

dfrd.promise().then(function(){
	angular.element($event.currentTarget).parent().append(
		$compile(tpl.responseText)($scope)
	);
	$scope.$apply();
});
$scope.Calendars.Kangaroo.settings= true;
