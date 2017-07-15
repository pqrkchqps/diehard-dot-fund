angular.module('diehardFundApp').filter 'timeFromNowInWords', ->
  (date, excludeAgo) ->
    moment(date).fromNow(excludeAgo)

angular.module('diehardFundApp').filter 'exactDateWithTime', ->
  (date) ->
    moment(date).format('dddd MMMM Do [at] h:mm a')
