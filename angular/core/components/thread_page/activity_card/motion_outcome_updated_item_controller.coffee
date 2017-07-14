angular.module('diehard_fundApp').controller 'MotionOutcomeUpdatedItemController', ($scope, Records) ->
  $scope.proposal = Records.proposals.find($scope.event.eventable.id)
