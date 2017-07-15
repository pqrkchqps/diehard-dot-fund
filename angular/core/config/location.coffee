  # enable html5 pushstate mode
angular.module('diehardFundApp').config ($locationProvider) ->
  $locationProvider.html5Mode(true)
