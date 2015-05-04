#You have to inject $compile (http://docs.angularjs.org/api/ng.$compile) and use it so angular knows about the new html.

$compile('<div>{{row}}</div')($scope).appendTo($event.currentTarget);

//or better jQuery element

$compile( $('#test') )($scope).appendTo($event.currentTarget);


// example
var addsett = $('.add-settings').detach();
angular.element($event.currentTarget).parent().append(
	$compile(addsett)($scope)
);