define ['indexCtrl'],(indexCtrl)->
    app = angular.module 'app',['ngRoute'] 

    app.config ['$routeProvider', ($routeProvider)->
        $routeProvider.when "/",
        templateUrl: 'templates/index.html'
        controller: indexCtrl
    ]

    angular.bootstrap(document.getElementsByTagName('body')[0],['app'])