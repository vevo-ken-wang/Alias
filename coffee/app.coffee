define ['services/apiHelper', 'directives/directives', 'indexCtrl'], (services, dirs, indexCtrl)->
    
    app = angular.module 'app',['ngRoute','apiHelper', 'directives'] 

    app.config ['$routeProvider', ($routeProvider)->
        $routeProvider.when "/",
        templateUrl: 'templates/index.html'
        controller: indexCtrl
    ]

    angular.bootstrap(document.getElementsByTagName('body')[0],['app'])

    app