angular.module('diehardFundApp').directive 'h1', ->
  restrict: 'E'
  link: (scope, elem, attrs) ->
    elem.attr 'tabindex', 0
