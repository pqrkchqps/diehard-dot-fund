angular.module('diehard_fundApp').controller 'NewMotionItemController', ($scope, Records) ->
  $scope.proposal = Records.proposals.find($scope.event.eventable.id)
