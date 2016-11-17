<div id="category-dlg" >
    <ul ng-repeat="cat in categories">
        <li>
            <input name="ids" id="tag_" value="" type="checkbox">
            <label for="tag_">{{cat}}</label>
        </li>
    </ul>
</div>

//var appPane = $('#AppPane');//JQuery request for the app pane element.
//appPane.html(data);//The dynamically loaded data
//$compile(appPane.contents())($scope);//Tells Angular to recompile the contents of the app pane.

var clnApp = angular.module('clnApp',[]);

clnApp.controller('categoryCtrl', ['$scope', '$http', '$compile', function($scope, $http, $compile) {

    $scope.categoryDlg = function(){
        $http({
            url: baseurl + "/calendar/default/getcategories",
            method: "GET",
        })
        .success(function(data, status, headers, config) {
            $scope.categories = data;
        }).error(function(data, status, headers, config) {
            $scope.status = status;
        });
        
        $( "#category-dlg" ).dialog({
            title: "Edit tags",
            width : 500,
            open: function(event,ui) {
                var catDlg = $('#category-dlg ul');
                //catDlg.html( $('#category-dlg ul').html() );
                $compile( catDlg.contents() )($scope);
            },
        });
    }
}]);