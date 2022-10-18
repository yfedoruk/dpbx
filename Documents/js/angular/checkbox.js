<form ng-submit="select()">
	<ul>
  	<li><input type="checkbox" name="category" value="videogames" ng-model="category.videogames" />Games</li>
  	<li><input type="checkbox" name="category" value="funny" ng-model="category.funny" />Funny</li>
  	<li><input type="checkbox" name="category" value="test" ng-model="category.test" />Test</li>
	</ul>
	<input type="submit" id="dm_categories" value="Select" />
</form>

<input type="hidden" id="dmcategory" name="categories" value="" />

$scope.category = {};
$scope.select = function(){
	categories = _.pairs($scope.category).filter(function(e){
		return (e[1] === true);
	});
	categories = _.without(_.flatten(categories), true).toString();
	$('#dmcategory').val(categories);
}