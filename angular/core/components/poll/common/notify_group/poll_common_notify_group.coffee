angular.module('diehard_fundApp').directive 'pollCommonNotifyGroup', ->
  scope: {model: '=', notifyAction: '@'}
  templateUrl: 'generated/components/poll/common/notify_group/poll_common_notify_group.html'
