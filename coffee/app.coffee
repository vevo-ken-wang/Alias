define ['ng'],->
    app = angular.module 'app',[] 
    angular.bootstrap(document.getElementsByTagName('body')[0],['app'])