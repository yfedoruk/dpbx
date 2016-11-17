<ul id="team-filters">
    <li ng-click="foo($event, team)" ng-repeat="team in teams">
         <img src="{{team.logoSmall}}" alt="{{team.name}}" title="{{team.name}}">
    </li>
</ul>


$scope.foo = function($event, team) {
	angular.element($event.currentTarget).parent(); // li
}