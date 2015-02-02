<div ng-controller="ctrl">
	<select ng-model="end" >
		<option value="never" >never</option>
		<option value="count" >by occurrences</option>
		<option value="date" >by date</option>
	</select>
</div>

var ctrl = function($scope){
	$scope.end = 'never';
}
/* right */
<body ng-app="slctApp">
    <div ng-controller="ctrl">
        <select ng-model="end" >
            <option value="never" >never</option>
            <option value="count" >by occurrences</option>
            <option value="date" >by date</option>
        </select>
    </div>
</body>

angular.module('slctApp', [])
    .controller('ctrl',['$scope', function($scope){
        $scope.end = 'count';
}]);