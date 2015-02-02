/* $watch helps you to run some code when some value attached to the $scope has changed.
 * It is rarely used, but sometimes is helpful. 
 * For instance, if you want to run some code each time 'myVar' changes, you could do the following:
 */
function MyController($scope) {

   $scope.myVar = 1;

   $scope.$watch('myVar', function() {
       alert('hey, myVar has changed!');
   });

   $scope.buttonClicked = function() {
      $scope.myVar = 2; // This will trigger $watch expression to kick in
   };

}