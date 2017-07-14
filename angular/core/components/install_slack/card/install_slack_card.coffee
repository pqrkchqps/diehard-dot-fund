angular.module('diehard_fundApp').directive 'installSlackCard', ->
  scope: {group: '='}
  templateUrl: 'generated/components/install_slack/card/install_slack_card.html'
