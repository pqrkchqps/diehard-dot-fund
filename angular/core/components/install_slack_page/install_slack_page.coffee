angular.module('diehard_fundApp').controller 'InstallSlackPageController', ($rootScope, Session, ModalService, InstallSlackModal) ->
  $rootScope.$broadcast('currentComponent', { page: 'installSlackPage' })
  ModalService.open(InstallSlackModal, preventClose: -> true) if Session.user().identityFor('slack')

  return
