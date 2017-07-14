  # enable html5 pushstate mode
angular.module('diehard_fundApp').config ($locationProvider) ->
  $locationProvider.html5Mode(true)
