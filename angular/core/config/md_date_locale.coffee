angular.module('diehardFundApp').config ($mdDateLocaleProvider) ->
  $mdDateLocaleProvider.formatDate = (date) ->
    moment(date).format('D MMMM YYYY')
