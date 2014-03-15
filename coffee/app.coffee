require ["services/services", "controllers/controllers","directives/directives"], ()->
    app = angular.module "app",["ngRoute", "services", "controllers"]

    app.config ["$routeProvider", ($routeProvider)->
        $routeProvider.when "/",
        templateUrl: "templates/index.html"
        controller: ($scope, $injector)->
            console.log "what's up"

    ]

    setTimeout ->
        angular.bootstrap(document.getElementsByTagName("body")[0],["app"])
    ,50

