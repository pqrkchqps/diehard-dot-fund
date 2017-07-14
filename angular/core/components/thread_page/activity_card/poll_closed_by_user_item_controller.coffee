angular.module('diehard_fundApp').controller 'PollClosedByUserItemController', ($scope, Records) ->
  $scope.poll = Records.polls.find($scope.event.eventable.id)
