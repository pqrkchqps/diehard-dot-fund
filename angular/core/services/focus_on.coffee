angular.module('diehardFundApp').directive 'focusOn', ->
  (scope, elem, attr) ->
    console.log "elem"
    scope.$on attr.focusOn, (e) ->
      console.log "helllooo", e
      elem[0].focus()
