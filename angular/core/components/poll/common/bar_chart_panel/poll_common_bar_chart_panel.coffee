angular.module('diehard_fundApp').directive 'pollCommonBarChartPanel', (AppConfig, Records) ->
  scope: {poll: '='}
  templateUrl: 'generated/components/poll/common/bar_chart_panel/poll_common_bar_chart_panel.html'
