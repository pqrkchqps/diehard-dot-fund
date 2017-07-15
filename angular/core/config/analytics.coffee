angular.module('diehardFundApp').config ($analyticsProvider) ->
  $analyticsProvider.firstPageview(true)
  $analyticsProvider.withAutoBase(true)
