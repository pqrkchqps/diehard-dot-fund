angular.module('diehard_fundApp').config ($mdDateLocaleProvider) ->
  $mdDateLocaleProvider.formatDate = (date) ->
    moment(date).format('D MMMM YYYY')
