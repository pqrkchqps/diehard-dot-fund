angular.module('diehardFundApp').directive 'pollCommonCollapsed', ->
  scope: {poll: '='}
  templateUrl: 'generated/components/poll/common/collapsed/poll_common_collapsed.html'
  controller: ($scope) ->

    $scope.formattedPollType = (type) ->
      _.capitalize type.replace('_', '-')
