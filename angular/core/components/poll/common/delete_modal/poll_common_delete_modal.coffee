angular.module('diehardFundApp').factory 'PollCommonDeleteModal', ($location, LmoUrlService, FormService) ->
  templateUrl: 'generated/components/poll/common/delete_modal/poll_common_delete_modal.html'
  controller: ($scope, poll) ->
    $scope.poll = poll

    $scope.submit = FormService.submit $scope, $scope.poll,
      submitFn: $scope.poll.destroy
      flashSuccess: 'poll_common_delete_modal.success'
      successCallback: ->
        path = if $scope.poll.discussion()
          LmoUrlService.discussion($scope.poll.discussion())
        else if $scope.poll.group()
          LmoUrlService.group($scope.poll.group())
        else
          '/dashboard'

        $location.path path
