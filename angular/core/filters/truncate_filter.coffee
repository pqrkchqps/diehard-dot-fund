angular.module('diehardFundApp').filter 'truncate', ->
  (string, length = 100, separator = ' ') ->
    _.trunc string,
      length: length
      separator: separator
