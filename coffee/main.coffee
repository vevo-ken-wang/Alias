require.config
    baseUrl: 'js'
    paths:
      'ng':'/bower_components/angular/angular.min'
      # 'ng-route':'/bower_components/angular-route/angular-route.min.js'

require ['app'], ->
	console.log "loaded app"

