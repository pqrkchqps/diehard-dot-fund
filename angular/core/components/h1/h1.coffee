angular.module('diehard_fundApp').directive 'h1', ->
  restrict: 'E'
  link: (scope, elem, attrs) ->
    elem.attr 'tabindex', 0
