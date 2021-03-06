angular.module('diehardFundApp').factory 'PollCommonEditVoteModal', ($rootScope, PollService, LoadingService) ->
  templateUrl: 'generated/components/poll/common/edit_vote_modal/poll_common_edit_vote_modal.html'
  controller: ($scope, stance) ->
    $scope.stance = stance.clone()
    $scope.stance.visitorAttributes = _.pick($scope.stance.participant().serialize().visitor, 'name', 'email', 'participation_token')

    $scope.$on 'stanceSaved', ->
      $scope.$close()
      $rootScope.$broadcast 'refreshStance'

    LoadingService.listenForLoading $scope

    $scope.icon = ->
      PollService.iconFor($scope.stance.poll())
