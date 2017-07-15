angular.module('diehardFundApp').controller 'NewMotionItemController', ($scope, Records) ->
  $scope.proposal = Records.proposals.find($scope.event.eventable.id)
