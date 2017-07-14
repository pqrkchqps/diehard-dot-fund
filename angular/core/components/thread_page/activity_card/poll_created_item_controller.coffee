angular.module('diehard_fundApp').controller 'PollCreatedItemController', ($scope, Records) ->
  $scope.poll = Records.polls.find($scope.event.eventable.id)
