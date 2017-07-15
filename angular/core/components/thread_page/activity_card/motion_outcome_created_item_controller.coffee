angular.module('diehardFundApp').controller 'MotionOutcomeCreatedItemController', ($scope, Records) ->
  $scope.proposal = Records.proposals.find($scope.event.eventable.id)
