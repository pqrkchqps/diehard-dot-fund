angular.module('diehard_fundApp').controller 'OutcomeCreatedItemController', ($scope, Records) ->
  $scope.outcome = Records.outcomes.find($scope.event.eventable.id)
