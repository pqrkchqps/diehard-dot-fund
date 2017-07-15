angular.module('diehardFundApp').directive 'i', ->
  restrict: 'E'
  link: (scope, elem, attrs) ->
    elem.attr 'aria-hidden', 'true'
