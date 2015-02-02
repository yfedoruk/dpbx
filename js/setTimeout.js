$scope.auth = function(data){
	$scope.popupwindow = false;
	if(data.authurl){
		$scope.popupwindow = window.open(data.authurl, 'Google connection', "height=600,width=600");
		//must be global
		timeout = setTimeout(function(){
			if( !$scope.popupwindow.closed ){
				$scope.auth(data);
			}else{
				clearTimeout(timeout);
			}
		}, 3000);
	}
}



// delay ajax requests! ( Search directive)
angular.module('app').directive('vmsearch', ['$http', function ($http) {
    return {
        restrict: 'A',
        link: function ($scope, elem, attrs) {
			var numKeysPress=0;
			elem.bind("keyup", function (event) {
				numKeysPress++;
				if(numKeysPress>=3){
						if (typeof VIMEO_TIMEOUT != 'undefined'){
							clearTimeout(VIMEO_TIMEOUT);
						}
						VIMEO_TIMEOUT = setTimeout(function(){
							$http.get( $scope.VIDEOURL + "vimeo/search", {params: {q : elem.val()}} )
							.success(function(data, status, headers, config) {
								ff = $scope.$parent.files = data.files;
							});
						}, 1000);
					
				}
			});
        }
    }
}]);