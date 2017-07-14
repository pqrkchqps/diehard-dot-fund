angular.module('diehard_fundApp').directive 'pollCommonPercentVoted', ->
  scope: {poll: '='}
  templateUrl: 'generated/components/poll/common/percent_voted/poll_common_percent_voted.html'
