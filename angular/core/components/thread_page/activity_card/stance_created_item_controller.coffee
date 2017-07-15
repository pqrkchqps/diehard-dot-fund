angular.module('diehardFundApp').controller 'StanceCreatedItemController', ($scope, Records, TranslationService) ->
  $scope.stance = Records.stances.find($scope.event.eventable.id)

  TranslationService.listenForTranslations($scope)
