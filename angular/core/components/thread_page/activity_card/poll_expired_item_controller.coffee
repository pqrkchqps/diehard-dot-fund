angular.module('diehard_fundApp').controller 'PollExpiredItemController', ($scope, Records) ->
  $scope.poll = Records.polls.find($scope.event.eventable.id)
