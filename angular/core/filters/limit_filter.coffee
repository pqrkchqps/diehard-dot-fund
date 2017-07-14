angular.module('diehard_fundApp').filter 'limitByFn', ->
  (items, f, args) ->
    items.slice 0, f(args) if items
