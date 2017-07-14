angular.module('diehard_fundApp').config ($compileProvider) ->
  # disable angular debug stuff in production
  $compileProvider.debugInfoEnabled(false) if window.Diehard_Fund.environment == 'production'
