require.config
    baseUrl: 'js'
    paths:
    	'ng':'/bower_components/angular/angular.min'
    	'ng-route':'/bower_components/angular-route/angular-route.min'
    shim:
    	'ng-route':['ng']
    	'app':['ng','ng-route']
    	'apiHeler':['ng']

require ['app'], ->
	console.log "loaded app"

