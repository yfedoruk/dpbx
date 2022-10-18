<li ng-repeat="(id, val) in evnShare.sharedusers">{{val}} 
	<input type="checkbox" ng-model="evnShare.edit[id]" ng-change="evnShare.edit(id)" ng-true-value="7" ng-false-value="4" ng-checked="evnShare.checked(val.chmod)">edit
</li>


$scope.evnShare.edit = function(id){
	l(id);
	l($scope.evnShare.edit[id]); //yes
}

$scope.evnShare.checked = function(val){ return (val === '7') ? true : false; }		//init check/uncheck on page load