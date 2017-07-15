angular.module('diehardFundApp').controller 'NewVoteItemController', ($scope, Records, TranslationService) ->
  $scope.vote = Records.votes.find($scope.event.eventable.id)

  TranslationService.listenForTranslations($scope)
