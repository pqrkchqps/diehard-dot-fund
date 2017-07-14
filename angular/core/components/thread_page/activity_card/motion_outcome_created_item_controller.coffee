angular.module('diehard_fundApp').controller 'MotionOutcomeCreatedItemController', ($scope, Records) ->
  $scope.proposal = Records.proposals.find($scope.event.eventable.id)
