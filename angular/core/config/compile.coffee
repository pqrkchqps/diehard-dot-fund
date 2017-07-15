angular.module('diehardFundApp').config ($compileProvider) ->
  # disable angular debug stuff in production
  $compileProvider.debugInfoEnabled(false) if window.DiehardFund.environment == 'production'
