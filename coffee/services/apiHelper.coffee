define [],->
	apiHelper = angular.module 'apiHelper',[]
	apiHelper.service 'v$api',($q, $http)->
		root = 'http://stg-api.vevo.com/mobile'
		mostViewedToday: ->
			dfrd = $q.defer()
			$http.get(root+'/v1/video/list.json?offset=0&genres=&order=MostViewedThisWeek&max=10').success (data, status, headers) ->
				dfrd.resolve(data.result)

			dfrd.promise

