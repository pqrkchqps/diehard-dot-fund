angular.module('diehard_fundApp').controller 'MotionClosedItemController', ($scope, Records) ->
  $scope.proposal = Records.proposals.find($scope.event.eventable.id)
