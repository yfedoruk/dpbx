clnApp.factory('plotterSrv', ['$http', function (async) {
		return {
			getData: function () {
				var promise = async({method:'GET', url:'/calendar/default/getfirstcalendar'})
					.success(function (data, status, headers, config) {
						return data;
					})
					.error(function (data, status, headers, config) {
						return {"status": false};
					});
				
				return promise;
			}, 
			drawPlot: function(d) {
				l("okay! plotted! " + d);
			}
		}
    }]);
function stageController(scope, p) {
	scope.revenues = [];
	//l(scope.revenues);
	scope.$watch('revenues', function () {
		p.drawPlot(scope.revenues);
	}, true);

	p.getData().then(function(promise) {
		scope.revenues = promise.data;
	});
}
stageController['$inject'] = ['$scope','plotterSrv'];