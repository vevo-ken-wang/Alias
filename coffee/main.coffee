require.config
    baseUrl: 'js'
    paths:
    	'ng':'/bower_components/angular/angular.min'
    	'ng-route':'/bower_components/angular-route/angular-route.min'
    shim:
    	'ng-route':['ng']
    	'app':['ng','ng-route','services/services','directives/directives','controllers/controllers']
#    	'apiHeler':['ng']

require ['app']
