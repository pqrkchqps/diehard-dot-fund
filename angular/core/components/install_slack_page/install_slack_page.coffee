angular.module('diehardFundApp').controller 'InstallSlackPageController', ($rootScope, Session, ModalService, InstallSlackModal) ->
  $rootScope.$broadcast('currentComponent', { page: 'installSlackPage' })
  ModalService.open(InstallSlackModal, preventClose: -> true) if Session.user().identityFor('slack')

  return
