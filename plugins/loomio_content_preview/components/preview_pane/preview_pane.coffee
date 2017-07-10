angular.module('loomioApp').directive 'previewPane', ->
  scope: {comment: '=?', proposal: '=?', discussion: '=?'}
  restrict: 'E'
  templateUrl: 'generated/components/preview_pane/preview_pane.html'
  replace: true
  controller: ($scope) ->
    $scope.model = $scope.comment || $scope.proposal || $scope.discussion
    $scope.type  = $scope.model.constructor.singular
    $scope.$on 'commentFormInit', (event, comment) ->
      $scope.model = comment if $scope.type == 'comment'
