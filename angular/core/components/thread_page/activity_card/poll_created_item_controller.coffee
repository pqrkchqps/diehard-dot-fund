angular.module('diehardFundApp').controller 'PollCreatedItemController', ($scope, Records) ->
  $scope.poll = Records.polls.find($scope.event.eventable.id)
