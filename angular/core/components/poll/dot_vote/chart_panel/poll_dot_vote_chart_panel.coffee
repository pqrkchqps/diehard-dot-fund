angular.module('diehard_fundApp').directive 'pollDotVoteChartPanel', ->
  scope: {poll: '='}
  templateUrl: 'generated/components/poll/dot_vote/chart_panel/poll_dot_vote_chart_panel.html'
