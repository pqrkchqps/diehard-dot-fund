angular.module('diehard_fundApp').directive 'invitable', ->
  scope: { invitable: '=' }
  restrict: 'E'
  templateUrl: 'generated/components/invitation/invitable/invitable.html'
  replace: true
  controller: ($scope) ->
    # So that typeahead and our regular ng-repeat can use the same template
    $scope.match =
      label: $scope.invitable

    return
