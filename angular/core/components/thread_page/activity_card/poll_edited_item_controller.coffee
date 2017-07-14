angular.module('diehard_fundApp').controller 'PollEditedItemController', ($scope, Records) ->
  $scope.version = Records.versions.find($scope.event.eventable.id)
  $scope.poll = $scope.version.poll()
