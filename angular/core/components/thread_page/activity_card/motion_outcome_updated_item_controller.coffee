angular.module('diehardFundApp').controller 'MotionOutcomeUpdatedItemController', ($scope, Records) ->
  $scope.proposal = Records.proposals.find($scope.event.eventable.id)
