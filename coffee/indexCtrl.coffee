define [],->
	($scope, $q, v$api)->
		v$api.mostViewedToday().then (videos)->
			$scope.videos = videos