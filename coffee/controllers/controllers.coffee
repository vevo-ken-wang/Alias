require ['services/services'], ->
    angular.module("controllers",['services'])
    .controller "indexCtrl",($scope, v$api)->
        console.log "I'm in the controller and v$api -> "+v$api

